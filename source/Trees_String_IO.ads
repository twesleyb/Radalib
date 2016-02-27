-- Radalib, Copyright (c) 2016 by
-- Sergio Gomez (sergio.gomez@urv.cat), Alberto Fernandez (alberto.fernandez@urv.cat)
--
-- This library is free software; you can redistribute it and/or modify it under the terms of the
-- GNU Lesser General Public License version 2.1 as published by the Free Software Foundation.
--
-- This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
-- without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- See the GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License along with this
-- library (see LICENSE.txt); if not, see http://www.gnu.org/licenses/


-- @filename Trees_String_IO.ads
-- @author Sergio Gomez
-- @version 1.0
-- @date 06/04/2012
-- @revision 30/01/2016
-- @brief Input and Output of Trees of Strings

with Ada.Text_IO; use Ada.Text_IO;
with Utils; use Utils;
with Trees_String; use Trees_String;
with Trees.IO;

package Trees_String_IO is

  function To_S(Us: in Ustring; Width: in Natural := Default_Integer_Width; Format: in Tree_Format) return String;
  procedure Get_S(Us: out Ustring; Format: in Tree_Format);

  package Trees_IO_S is new Trees_String.IO(To_S, Get_S);

  procedure Put_Tree(T: in Tree; Width: in Natural := Default_String_Width; Format: in Tree_Format := Default_Tree_Format) renames Trees_IO_S.Put_Tree;
  procedure Put_Tree(Ft: in File_Type; T: in Tree; Width: in Natural := Default_String_Width; Format: in Tree_Format := Default_Tree_Format) renames Trees_IO_S.Put_Tree;
  procedure Put_Tree(Fn: in String; T: in Tree; Width: in Natural := Default_String_Width; Mode: in File_Mode := Out_File; Format: in Tree_Format := Default_Tree_Format) renames Trees_IO_S.Put_Tree;

  procedure Get_Tree(T: out Tree) renames Trees_IO_S.Get_Tree;
  procedure Get_Tree(Ft: in File_Type; T: out Tree) renames Trees_IO_S.Get_Tree;
  procedure Get_Tree(Fn: in String; T: out Tree) renames Trees_IO_S.Get_Tree;

end Trees_String_IO;

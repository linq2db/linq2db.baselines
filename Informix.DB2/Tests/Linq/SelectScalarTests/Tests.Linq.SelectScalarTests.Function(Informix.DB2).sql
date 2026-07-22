-- Informix.DB2 Informix
SELECT FIRST 1
	To_Char(c_1.ChildID) || ',' || Nvl('123'::NVarChar(3), '')
FROM
	Child c_1


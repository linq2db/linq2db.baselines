﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(63) -- String
SET     @p = '<t><r><c0>1</c0><c1>11</c1></r><r><c0>2</c0><c1>22</c1></r></t>'

SELECT
	t."Field1",
	t."Field2"
FROM
	XmlTable('/t/r' PASSING XmlType(:p) COLUMNS "Field1" Int path 'c0', "Field2" VarChar(2) path 'c1') t


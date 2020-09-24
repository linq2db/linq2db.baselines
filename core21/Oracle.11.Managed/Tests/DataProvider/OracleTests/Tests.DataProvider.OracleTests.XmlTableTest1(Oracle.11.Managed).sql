BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Varchar2(67) -- String
SET     @p1 = '<t>
<r><c0>1</c0><c1>11</c1></r>
<r><c0>2</c0><c1>22</c1></r>
</t>
'

SELECT
	t.field1,
	t.field2
FROM
	XmlTable('/t/r' PASSING XmlType(:p1) COLUMNS field1 Int path 'c0', field2 VarChar(255) path 'c1') t


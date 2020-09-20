BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Varchar2(67) -- String
SET     @p1 = '<t>
<r><c0>1</c0><c1>11</c1></r>
<r><c0>2</c0><c1>22</c1></r>
</t>
'

SELECT
	t.Field1,
	t.Field2
FROM
	XmlTable('/t/r' PASSING XmlType(:p1) COLUMNS Field1 Int path 'c0', Field2 VarChar2(2) path 'c1') t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Varchar2(35) -- String
SET     @p1 = '<t><r><c0>1</c0><c1>11</c1></r></t>'

SELECT
	t.Field1,
	t.Field2
FROM
	XmlTable('/t/r' PASSING XmlType(:p1) COLUMNS Field1 Int path 'c0', Field2 VarChar2(2) path 'c1') t


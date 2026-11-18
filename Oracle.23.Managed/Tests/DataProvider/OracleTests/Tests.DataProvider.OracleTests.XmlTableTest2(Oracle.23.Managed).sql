-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(67) -- String
SET     @p = '<t>
<r><c0>1</c0><c1>11</c1></r>
<r><c0>2</c0><c1>22</c1></r>
</t>
'

SELECT
	t2."field1",
	t2."field2"
FROM
	"Parent" t1
		INNER JOIN XmlTable('/t/r' PASSING XmlType(:p) COLUMNS "field1" Int path 'c0', "field2" VarChar(255) path 'c1') t2 ON t1."ParentID" = t2."field1"


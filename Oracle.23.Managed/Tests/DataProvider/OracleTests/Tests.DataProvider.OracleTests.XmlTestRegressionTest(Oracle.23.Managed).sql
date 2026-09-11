-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @id2 Varchar2(3) -- String
SET     @id2 = '123'
DECLARE @p NClob -- Object
SET     @p = '<t>
<r><c0>0</c0><c1>NULL</c1><c2>0</c2></r>
<r><c0>1</c0><c1>NULL</c1><c2>1</c2></r>
<r><c0>2</c0><c1>NULL</c1><c2>2</c2></r>
<r><c0>3</c0><c1>NULL</c1><c2>3</c2></r>
<r><c0>4</c0><c1>NULL</c1><c2>4<'
-- value above truncated for logging

INSERT INTO "RegTestData"
(
	ID1,
	ID2,
	"Type"
)
SELECT
	t1.ID1,
	:id2,
	t1."Type"
FROM
	XmlTable('/t/r' PASSING XmlType(:p) COLUMNS ID1 VarChar(30) path 'c0', ID2 VarChar(30) path 'c1', "Type" Int path 'c2') t1


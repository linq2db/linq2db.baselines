BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @data Varchar2(35) -- String
SET     @data = '<t><r><c0>1</c0><c1>11</c1></r></t>'

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			XmlTable('/t/r' PASSING XmlType(:data) COLUMNS "Field1" Int path 'c0', "Field2" VarChar(2) path 'c1') t
		WHERE
			t."Field1" = p."ParentID"
	) > 0

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @data Varchar2(35) -- String
SET     @data = '<t><r><c0>2</c0><c1>22</c1></r></t>'

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			XmlTable('/t/r' PASSING XmlType(:data) COLUMNS "Field1" Int path 'c0', "Field2" VarChar(2) path 'c1') t
		WHERE
			t."Field1" = p."ParentID"
	) > 0


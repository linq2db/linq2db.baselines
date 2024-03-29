﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(35) -- String
SET     @p = '<t><r><c0>1</c0><c1>11</c1></r></t>'

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					XmlTable('/t/r' PASSING XmlType(:p) COLUMNS "Field1" Int path 'c0', "Field2" VarChar(2) path 'c1') t
				WHERE
					t."Field1" = p."ParentID"
			) as "ex",
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
	) p_1
WHERE
	p_1."ex" > 0

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(35) -- String
SET     @p = '<t><r><c0>2</c0><c1>22</c1></r></t>'

SELECT
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					XmlTable('/t/r' PASSING XmlType(:p) COLUMNS "Field1" Int path 'c0', "Field2" VarChar(2) path 'c1') t
				WHERE
					t."Field1" = p."ParentID"
			) as "ex",
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
	) p_1
WHERE
	p_1."ex" > 0


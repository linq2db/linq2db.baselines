﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	it_1."cond",
	it_1."ColorName",
	it_1."StyleName",
	it_1."Count_1"
FROM
	"SomeItem" t2
		LEFT JOIN "SomeColor" a_Color ON t2."ColorId" = a_Color."Id"
		LEFT JOIN "SomeStyle" a_Style ON t2."StyleId" = a_Style."Id"
		OUTER APPLY (
			SELECT
				it."ColorName",
				it."StyleName",
				it."Count" as "Count_1",
				1 as "cond"
			FROM
				(
					SELECT a_Color."Name" AS "ColorName", a_Style."Name" AS "StyleName", (
					SELECT
						COUNT(*) as COUNT_1
					FROM
						"SomeItem" t1
				) AS "Count" FROM sys.dual
					UNION ALL
					SELECT NULL, a_Style."Name", 0 FROM sys.dual) it
		) it_1
WHERE
	it_1."ColorName" = 'Red'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId",
	a_Color."Id",
	a_Color."Name",
	a_Style."Id",
	a_Style."Name"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" a_Color ON t1."ColorId" = a_Color."Id"
		LEFT JOIN "SomeStyle" a_Style ON t1."StyleId" = a_Style."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1


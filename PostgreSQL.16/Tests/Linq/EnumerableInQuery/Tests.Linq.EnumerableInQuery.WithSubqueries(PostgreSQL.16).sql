-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	it_1.cond,
	it_1."ColorName",
	it_1."StyleName",
	it_1."Count_1"
FROM
	"SomeItem" t2
		LEFT JOIN "SomeColor" "a_Color" ON t2."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON t2."StyleId" = "a_Style"."Id"
		LEFT JOIN LATERAL (
			SELECT
				it."ColorName",
				it."StyleName",
				it."Count" as "Count_1",
				1 as cond
			FROM
				(VALUES
					("a_Color"."Name","a_Style"."Name",(
						SELECT
							COUNT(*) as "Count_1"
						FROM
							"SomeItem" t1
					)),
					(NULL,"a_Style"."Name",0)
				) it("ColorName", "StyleName", "Count")
		) it_1 ON 1=1
WHERE
	it_1."ColorName" = 'Red'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId",
	"a_Color"."Id",
	"a_Color"."Name",
	"a_Style"."Id",
	"a_Style"."Name"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" "a_Color" ON t1."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON t1."StyleId" = "a_Style"."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1


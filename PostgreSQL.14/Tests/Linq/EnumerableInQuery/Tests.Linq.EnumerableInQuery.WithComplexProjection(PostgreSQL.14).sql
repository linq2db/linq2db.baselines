-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	it_1.cond,
	it_1."ColorName",
	it_1."StyleName",
	it_1."Count_1",
	it_1."Conditional",
	it_1.field1,
	it_1.field2,
	it_1.field3
FROM
	"SomeItem" t3
		LEFT JOIN "SomeColor" "a_Color" ON t3."ColorId" = "a_Color"."Id"
		LEFT JOIN "SomeStyle" "a_Style" ON t3."StyleId" = "a_Style"."Id"
		LEFT JOIN (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				"SomeItem" t1
		) t2 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				it."ColorName",
				it."Count" as "Count_1",
				it."StyleName",
				it."Conditional",
				it.field1,
				it.field2,
				it.field3,
				1 as cond
			FROM
				(VALUES
					("a_Color"."Name",t2."Count_1","a_Style"."Name",CASE
						WHEN "a_Color"."Name" = 'Red' THEN t2."Count_1"
						ELSE 0
					END,1,2,3),
					(NULL,0,"a_Style"."Name",NULL,4,5,6)
				) it("ColorName", "Count", "StyleName", "Conditional", field1, field2, field3)
		) it_1 ON 1=1
WHERE
	it_1."ColorName" = 'Red' OR it_1."Count_1" = 0

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	it."Conditional"
FROM
	"SomeItem" t3
		LEFT JOIN "SomeColor" "a_Color" ON t3."ColorId" = "a_Color"."Id"
		LEFT JOIN (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				"SomeItem" t1
		) t2 ON 1=1
		LEFT JOIN LATERAL (VALUES
			("a_Color"."Name",t2."Count_1",CASE
				WHEN "a_Color"."Name" = 'Red' THEN t2."Count_1"
				ELSE 0
			END),
			(NULL,0,NULL)
		) it("ColorName", "Count", "Conditional") ON 1=1
WHERE
	it."ColorName" = 'Red' OR it."Count" = 0

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1


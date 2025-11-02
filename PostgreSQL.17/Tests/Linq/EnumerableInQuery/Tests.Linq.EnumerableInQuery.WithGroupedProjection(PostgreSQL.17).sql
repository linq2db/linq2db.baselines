-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	it_1.cond_1,
	it_1.cond,
	it_1."ColorName",
	it_1."StyleName",
	it_1."Count_1",
	it_1."Conditional",
	it_1.field1,
	it_1.field2,
	it_1.field3
FROM
	(
		SELECT
			g_2."ColorName",
			g_2."StyleName",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					Coalesce("a_Color"."Name", '') as "ColorName",
					Coalesce("a_Style"."Name", '') as "StyleName"
				FROM
					"SomeItem" g_1
						LEFT JOIN "SomeColor" "a_Color" ON g_1."ColorId" = "a_Color"."Id"
						LEFT JOIN "SomeStyle" "a_Style" ON g_1."StyleId" = "a_Style"."Id"
			) g_2
		GROUP BY
			g_2."ColorName",
			g_2."StyleName"
	) t1
		LEFT JOIN LATERAL (
			SELECT
				it."ColorName",
				it."Count" as "Count_1",
				it."index" as cond,
				it."StyleName",
				it."Conditional",
				it.field1,
				it.field2,
				it.field3,
				1 as cond_1
			FROM
				(VALUES
					(t1."ColorName",t1."Count_1",0,t1."StyleName",CASE
						WHEN t1."ColorName" = 'Red' THEN t1."Count_1"
						ELSE 0
					END,1,2,3),
					(NULL,0,1,t1."StyleName",NULL,4,5,6)
				) it("ColorName", "Count", "index", "StyleName", "Conditional", field1, field2, field3)
		) it_1 ON 1=1
WHERE
	it_1."ColorName" = 'Red' OR it_1."Count_1" = 0

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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


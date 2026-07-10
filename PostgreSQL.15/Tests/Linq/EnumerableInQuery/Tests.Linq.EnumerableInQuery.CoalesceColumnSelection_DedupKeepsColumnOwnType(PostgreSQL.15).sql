-- PostgreSQL.15 PostgreSQL12
SELECT
	it."ColorId"
FROM
	"SomeItem" item_1
		LEFT JOIN "SomeColor" "a_Color" ON item_1."ColorId" = "a_Color"."Id"
		LEFT JOIN LATERAL (VALUES
			(Coalesce(CASE
				WHEN "a_Color"."Id" IS NULL THEN NULL
				ELSE item_1."ColorId"
			END, 0)),
			(Coalesce(CASE
				WHEN "a_Color"."Id" IS NULL THEN NULL
				ELSE item_1."ColorId"
			END, 0))
		) it("ColorId") ON 1=1

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1


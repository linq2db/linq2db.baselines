-- PostgreSQL.18 PostgreSQL

SELECT
	t3."ColorName",
	t3."StyleName",
	t3."Conditional",
	t3."StrValue"
FROM
	(
		SELECT
			CONCAT_WS(',', '', it."StyleName") || ':' || CASE
				WHEN it."ColorId" IS NULL OR Length(it."ColorId"::text) >= 4
					THEN it."ColorId"::text
				ELSE LPAD(it."ColorId"::text, 4, '0')
			END as "StrValue",
			it."ColorName",
			it."StyleName",
			it."Conditional"
		FROM
			"SomeItem" t2
				LEFT JOIN "SomeColor" "a_Color" ON t2."ColorId" = "a_Color"."Id"
				LEFT JOIN "SomeStyle" "a_Style" ON t2."StyleId" = "a_Style"."Id"
				LEFT JOIN "SomeColor" "a_Color_1" ON t2."ColorId" = "a_Color_1"."Id"
				LEFT JOIN LATERAL (VALUES
					("a_Color"."Name","a_Style"."Name",Coalesce(CASE
						WHEN "a_Color_1"."Id" IS NULL THEN NULL
						ELSE t2."ColorId"
					END, 0),CASE
						WHEN "a_Color"."Name" = 'Red' THEN (
							SELECT
								COUNT(*) as "Conditional"
							FROM
								"SomeItem" t1
						)
						ELSE 0
					END),
					(NULL,"a_Style"."Name",Coalesce(CASE
						WHEN "a_Color_1"."Id" IS NULL THEN NULL
						ELSE t2."ColorId"
					END, 0),0)
				) it("ColorName", "StyleName", "ColorId", "Conditional") ON 1=1
		WHERE
			it."ColorName" = 'Red'
	) t3
ORDER BY
	t3."StrValue"

-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId"
FROM
	"SomeItem" t1


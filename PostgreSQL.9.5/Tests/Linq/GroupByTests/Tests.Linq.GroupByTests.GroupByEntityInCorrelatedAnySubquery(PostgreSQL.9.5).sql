-- PostgreSQL.9.5 PostgreSQL
SELECT
	pa."Id"
FROM
	"GroupedProductAttributeMap" pam
		INNER JOIN "GroupedProductAttribute" pa ON pam."ProductAttributeId" = pa."Id"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"groupedProduct_1"."Id"
				FROM
					"GroupedProduct" "groupedProduct_1"
						INNER JOIN "GroupedProductAttributeMap" pam_1 ON "groupedProduct_1"."Id" = pam_1."ProductId"
				GROUP BY
					"groupedProduct_1"."Id"
				HAVING
					COUNT(*) = 1
			) p
		WHERE
			p."Id" >= pam."ProductId"
	)


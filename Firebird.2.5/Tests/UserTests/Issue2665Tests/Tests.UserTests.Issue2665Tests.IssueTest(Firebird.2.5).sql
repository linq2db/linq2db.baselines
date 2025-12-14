-- Firebird.2.5 Firebird

SELECT
	"pa"."Id"
FROM
	"ProductAttributeMapping" "pam"
		INNER JOIN "ProductAttributeTable" "pa" ON "pam"."ProductAttributeId" = "pa"."Id"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"groupedProduct"."Id"
				FROM
					"ProductTable" "groupedProduct"
						INNER JOIN "ProductAttributeMapping" "pam_1" ON "groupedProduct"."Id" = "pam_1"."ProductId"
				GROUP BY
					"groupedProduct"."Id"
				HAVING
					COUNT(*) = 1
			) "p"
		WHERE
			"p"."Id" >= "pam"."ProductId"
	)


BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."position"
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(-10,-10,10)
			) t("X", "X0", "Y")
		WHERE
			x."position".x > t."X"
	)
LIMIT :take


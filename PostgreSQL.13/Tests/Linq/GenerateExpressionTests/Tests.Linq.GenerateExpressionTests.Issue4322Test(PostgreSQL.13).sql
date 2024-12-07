BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
				(-10)
			) t("X")
		WHERE
			x."position".x > t."X"
	)
LIMIT :take


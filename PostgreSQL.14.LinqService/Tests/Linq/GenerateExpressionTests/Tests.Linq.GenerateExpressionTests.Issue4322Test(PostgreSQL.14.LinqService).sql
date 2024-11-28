BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	x."position"
FROM
	entities x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(VALUES
				(-10)
			) t("X")
		WHERE
			x."position".x > t."X"
	)
LIMIT :take


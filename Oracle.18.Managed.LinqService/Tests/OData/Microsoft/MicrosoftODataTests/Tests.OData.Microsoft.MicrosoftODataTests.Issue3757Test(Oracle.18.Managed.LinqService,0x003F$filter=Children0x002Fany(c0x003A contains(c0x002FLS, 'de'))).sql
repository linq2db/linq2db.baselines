BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @TypedProperty Varchar2(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	m_1.ID,
	m_1."ValS",
	d.ID,
	d."ValB",
	d."ValInt"
FROM
	(
		SELECT DISTINCT
			l1.ID,
			l1."ValS"
		FROM
			"Issue3757Level1" l1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Issue3757Level2" c_1
				WHERE
					l1.ID = c_1."ParentId" AND CASE
						WHEN l1."ValS" LIKE :TypedProperty ESCAPE '~' THEN 1
						WHEN l1."ValS" NOT LIKE :TypedProperty ESCAPE '~' THEN 0
						ELSE NULL
					END = 1 AND
					l1."ValS" IS NOT NULL
			)
	) m_1
		INNER JOIN "Issue3757Level2" d ON m_1.ID = d."ParentId"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @TypedProperty Varchar2(4) -- String
SET     @TypedProperty = '%de%'

SELECT
	it.ID,
	it."ValB",
	it."ValS",
	it."ValInt"
FROM
	"Issue3757Level1" it
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Issue3757Level2" c_1
		WHERE
			it.ID = c_1."ParentId" AND CASE
				WHEN it."ValS" LIKE :TypedProperty ESCAPE '~' THEN 1
				WHEN it."ValS" NOT LIKE :TypedProperty ESCAPE '~' THEN 0
				ELSE NULL
			END = 1 AND
			it."ValS" IS NOT NULL
	)


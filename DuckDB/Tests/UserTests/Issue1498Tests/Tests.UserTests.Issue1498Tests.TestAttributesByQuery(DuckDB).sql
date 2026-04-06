-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 6
DECLARE $Title NVarChar(5) -- String
SET     $Title = 'title'
DECLARE $Text NVarChar(4) -- String
SET     $Text = 'text'

INSERT INTO Topic
(
	Id,
	Title,
	Text
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Title AS VARCHAR),
	CAST($Text AS VARCHAR)
)

-- DuckDB

SELECT
	m_1.Id,
	d.Id
FROM
	(
		SELECT
			x.Id
		FROM
			Topic x
		WHERE
			x.Id = 6
		LIMIT 1
	) m_1
		INNER JOIN Message d ON d.TopicId = m_1.Id

-- DuckDB

SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	Topic x
WHERE
	x.Id = 6
LIMIT 1


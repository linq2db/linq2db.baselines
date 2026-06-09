-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 6
DECLARE $Title Text(5) -- String
SET     $Title = 'title'u
DECLARE $Text Text(4) -- String
SET     $Text = 'text'u

INSERT INTO Topic
(
	Id,
	Title,
	Text
)
VALUES
(
	$Id,
	$Title,
	$Text
)

-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1
FROM
	(
		SELECT
			x.Id as Id
		FROM
			Topic x
		WHERE
			x.Id = 6
		LIMIT 1
	) m_1
		INNER JOIN Message d ON m_1.Id = d.TopicId

-- YDB Ydb

SELECT
	x.Id as Id,
	x.Title as Title,
	x.Text as Text
FROM
	Topic x
WHERE
	x.Id = 6
LIMIT 1


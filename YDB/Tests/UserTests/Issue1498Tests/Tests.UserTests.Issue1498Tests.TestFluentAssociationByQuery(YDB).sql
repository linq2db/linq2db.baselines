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
DECLARE $Id Int32
SET     $Id = 60
DECLARE $TopicId Int32
SET     $TopicId = 6
DECLARE $Text Text(7) -- String
SET     $Text = 'message'u

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	$Id,
	$TopicId,
	$Text
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 61
DECLARE $TopicId Int32
SET     $TopicId = 7
DECLARE $Text Text(7) -- String
SET     $Text = 'message'u

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	$Id,
	$TopicId,
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
		INNER JOIN Message d ON d.TopicId = m_1.Id

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


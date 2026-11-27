-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 6
DECLARE $Title NVarChar(5) -- String
SET     $Title = 'title'
DECLARE $Text NVarChar(4) -- String
SET     $Text = 'text'

INSERT INTO ForumTopic
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

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 60
DECLARE $TopicId INTEGER -- Int32
SET     $TopicId = 6
DECLARE $Text NVarChar(7) -- String
SET     $Text = 'message'

INSERT INTO ForumMessage
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

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 61
DECLARE $TopicId INTEGER -- Int32
SET     $TopicId = 7
DECLARE $Text NVarChar(7) -- String
SET     $Text = 'message'

INSERT INTO ForumMessage
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

-- DuckDB
SELECT
	m_1.Id,
	d.Id
FROM
	(
		SELECT
			x.Id
		FROM
			ForumTopic x
		WHERE
			x.Id = 6
		LIMIT 1
	) m_1
		INNER JOIN ForumMessage d ON d.TopicId = m_1.Id

-- DuckDB
SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	ForumTopic x
WHERE
	x.Id = 6
LIMIT 1


BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Topic

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Topic
(
	Id    Int           NOT NULL,
	Title NVarChar(255)     NULL,
	Text  NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Message

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Message
(
	Id      Int           NOT NULL,
	TopicId Int           NOT NULL,
	Text    NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO Topic
(
	Id,
	Title,
	Text
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 60
DECLARE @TopicId Integer(4) -- Int32
SET     @TopicId = 6
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 61
DECLARE @TopicId Integer(4) -- Int32
SET     @TopicId = 7
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id
FROM
	(
		SELECT FIRST 1
			x.Id
		FROM
			Topic x
		WHERE
			x.Id = 6
	) m_1
		INNER JOIN Message d ON d.TopicId = m_1.Id

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	x.Id,
	x.Title,
	x.Text
FROM
	Topic x
WHERE
	x.Id = 6

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Message

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Topic


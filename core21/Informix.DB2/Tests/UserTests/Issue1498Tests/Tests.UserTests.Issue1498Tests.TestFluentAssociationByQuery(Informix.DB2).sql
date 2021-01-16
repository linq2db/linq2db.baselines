BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Topic
(
	Id    Int           NOT NULL,
	Title NVarChar(255)     NULL,
	Text  NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Message
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
	key_data_result.Id,
	key_data_result.Title,
	key_data_result.Text,
	detail.Id
FROM
	(
		SELECT DISTINCT
			t1.Id,
			t1.Title,
			t1.Text
		FROM
			(
				SELECT FIRST 1
					x.Id,
					x.Title,
					x.Text
				FROM
					Topic x
				WHERE
					x.Id = 6
			) t1
	) key_data_result
		INNER JOIN Message detail ON detail.TopicId = key_data_result.Id

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

DROP TABLE Message

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Topic


BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Topic
(
	Id    Int           NOT NULL,
	Title NVarChar(255)     NULL,
	Text  NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Message
(
	Id      Int           NOT NULL,
	TopicId Int           NOT NULL,
	Text    NVarChar(255)     NULL,

	PRIMARY KEY (Id)
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

DROP TABLE Message

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Topic


BeforeExecute
-- Firebird

CREATE TABLE "Topic"
(
	"Id"    Int                                    NOT NULL,
	"Title" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Text"  VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Topic" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "Message"
(
	"Id"      Int                                    NOT NULL,
	"TopicId" Int                                    NOT NULL,
	"Text"    VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Message" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Firebird

DROP TABLE "Message"

BeforeExecute
-- Firebird

DROP TABLE "Topic"


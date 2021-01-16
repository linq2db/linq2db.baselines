BeforeExecute
-- Firebird

CREATE TABLE "Topic"
(
	"Id"    Int                                    NOT NULL,
	"Title" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Text"  VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "Message"
(
	"Id"      Int                                    NOT NULL,
	"TopicId" Int                                    NOT NULL,
	"Text"    VarChar(255) CHARACTER SET UNICODE_FSS
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

DROP TABLE "Message"

BeforeExecute
-- Firebird

DROP TABLE "Topic"


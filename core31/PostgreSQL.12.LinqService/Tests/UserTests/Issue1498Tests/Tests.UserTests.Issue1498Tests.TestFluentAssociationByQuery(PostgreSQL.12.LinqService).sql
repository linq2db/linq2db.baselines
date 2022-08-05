﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Topic"
(
	"Id"    Int  NOT NULL,
	"Title" text     NULL,
	"Text"  text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Message"
(
	"Id"      Int  NOT NULL,
	"TopicId" Int  NOT NULL,
	"Text"    text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title Text(5) -- String
SET     @Title = 'title'
DECLARE @Text Text(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	:Id,
	:Title,
	:Text
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text Text(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	:Id,
	:TopicId,
	:Text
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text Text(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	:Id,
	:TopicId,
	:Text
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	key_data_result."Id",
	key_data_result."Title",
	key_data_result."Text",
	detail."Id"
FROM
	(
		SELECT DISTINCT
			t1."Id",
			t1."Title",
			t1."Text"
		FROM
			(
				SELECT
					x."Id",
					x."Title",
					x."Text"
				FROM
					"Topic" x
				WHERE
					x."Id" = 6
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Message" detail ON detail."TopicId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"Topic" x
WHERE
	x."Id" = 6
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Message"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Topic"


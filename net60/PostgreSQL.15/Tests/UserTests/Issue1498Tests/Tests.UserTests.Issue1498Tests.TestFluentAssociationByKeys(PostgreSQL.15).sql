﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Topic"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Topic"
(
	"Id"    Int  NOT NULL,
	"Title" text     NULL,
	"Text"  text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Message"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Message"
(
	"Id"      Int  NOT NULL,
	"TopicId" Int  NOT NULL,
	"Text"    text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
		INNER JOIN "Message" detail ON key_data_result."Id" = detail."TopicId"

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"Topic" x
WHERE
	x."Id" = 6
LIMIT :take

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Message"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Topic"


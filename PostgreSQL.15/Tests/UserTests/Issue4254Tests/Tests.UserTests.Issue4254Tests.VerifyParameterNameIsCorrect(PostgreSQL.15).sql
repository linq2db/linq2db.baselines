﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_user_share

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_items

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE issue_4254_media_items
(
	id uuid NOT NULL,

	CONSTRAINT "PK_issue_4254_media_items" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE issue_4254_media_item_user_share
(
	id            uuid      NOT NULL,
	media_item_id uuid      NOT NULL,
	created_by_id uuid      NOT NULL,
	user_id       uuid      NOT NULL,
	expires_at    TimeStamp NOT NULL,

	CONSTRAINT "PK_issue_4254_media_item_user_share" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE issue_4254_media_item_to_media_item_categories
(
	id            uuid NOT NULL,
	category_id   uuid NOT NULL,
	media_item_id uuid NOT NULL,

	CONSTRAINT "PK_issue_4254_media_item_to_media_item_categories" PRIMARY KEY (id)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @userId Uuid -- Guid
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @now Timestamp -- DateTime2
SET     @now = '2020-02-29 17:54:55.123'::timestamp

SELECT
	m_1."Id",
	d.category_id
FROM
	(
		SELECT DISTINCT
			x.id as "Id"
		FROM
			issue_4254_media_items x
		WHERE
			(EXISTS(
				SELECT
					*
				FROM
					issue_4254_media_item_user_share y
				WHERE
					x.id = y.media_item_id AND y.user_id = :userId AND
					y.expires_at > :now
			) OR EXISTS(
				SELECT
					*
				FROM
					issue_4254_media_item_user_share y_1
				WHERE
					x.id = y_1.media_item_id AND y_1.created_by_id = :userId AND
					y_1.expires_at > :now
			))
	) m_1
		INNER JOIN issue_4254_media_item_to_media_item_categories d ON m_1."Id" = d.media_item_id

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @now Timestamp -- DateTime2
SET     @now = '2020-02-29 17:54:55.123'::timestamp
DECLARE @userId Uuid -- Guid
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @now_1 Timestamp -- DateTime2
SET     @now_1 = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x.id,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				issue_4254_media_item_user_share y
			WHERE
				x.id = y.media_item_id AND y.expires_at > :now
		)
			THEN True
		ELSE False
	END
FROM
	issue_4254_media_items x
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			x.id = y_1.media_item_id AND y_1.user_id = :userId AND
			y_1.expires_at > :now_1
	) OR EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_2
		WHERE
			x.id = y_2.media_item_id AND y_2.created_by_id = :userId AND
			y_2.expires_at > :now_1
	))

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @userId Uuid -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @now Timestamp -- DateTime2
SET     @now = '2020-02-29 17:54:55.123'::timestamp

SELECT
	m_1."Id",
	d.category_id
FROM
	(
		SELECT DISTINCT
			x.id as "Id"
		FROM
			issue_4254_media_items x
		WHERE
			(EXISTS(
				SELECT
					*
				FROM
					issue_4254_media_item_user_share y
				WHERE
					x.id = y.media_item_id AND y.user_id = :userId AND
					y.expires_at > :now
			) OR EXISTS(
				SELECT
					*
				FROM
					issue_4254_media_item_user_share y_1
				WHERE
					x.id = y_1.media_item_id AND y_1.created_by_id = :userId AND
					y_1.expires_at > :now
			))
	) m_1
		INNER JOIN issue_4254_media_item_to_media_item_categories d ON m_1."Id" = d.media_item_id

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @now Timestamp -- DateTime2
SET     @now = '2020-02-29 17:54:55.123'::timestamp
DECLARE @userId Uuid -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @now_1 Timestamp -- DateTime2
SET     @now_1 = '2020-02-29 17:54:55.123'::timestamp

SELECT
	x.id,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				issue_4254_media_item_user_share y
			WHERE
				x.id = y.media_item_id AND y.expires_at > :now
		)
			THEN True
		ELSE False
	END
FROM
	issue_4254_media_items x
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			x.id = y_1.media_item_id AND y_1.user_id = :userId AND
			y_1.expires_at > :now_1
	) OR EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_2
		WHERE
			x.id = y_2.media_item_id AND y_2.created_by_id = :userId AND
			y_2.expires_at > :now_1
	))

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_user_share

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_items


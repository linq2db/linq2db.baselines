BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_user_share

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_items

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE issue_4254_media_items
(
	id uuid NOT NULL,

	CONSTRAINT "PK_issue_4254_media_items" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @userId Uuid -- Guid
SET     @userId = '24508d5b-10ba-42c4-ba0d-df4e017ce57f'::uuid
DECLARE @now Timestamp -- DateTime2
SET     @now = '2023-08-30 17:44:16.537'::timestamp

SELECT
	key_data_result.id,
	detail.category_id
FROM
	(
		SELECT DISTINCT
			x.id
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
	) key_data_result
		INNER JOIN issue_4254_media_item_to_media_item_categories detail ON key_data_result.id = detail.media_item_id

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @now Timestamp -- DateTime2
SET     @now = '2023-08-30 17:44:16.537'::timestamp
DECLARE @userId Uuid -- Guid
SET     @userId = '24508d5b-10ba-42c4-ba0d-df4e017ce57f'::uuid
DECLARE @now_1 Timestamp -- DateTime2
SET     @now_1 = '2023-08-30 17:44:16.537'::timestamp
DECLARE @now_2 Timestamp -- DateTime2
SET     @now_2 = '2023-08-30 17:44:16.537'::timestamp

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
			y_2.expires_at > :now_2
	))

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @userId Uuid -- Guid
SET     @userId = '9ecd0a88-9972-411b-b51e-7213898078b3'::uuid
DECLARE @now Timestamp -- DateTime2
SET     @now = '2023-08-30 17:44:16.632'::timestamp

SELECT
	key_data_result.id,
	detail.category_id
FROM
	(
		SELECT DISTINCT
			x.id
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
	) key_data_result
		INNER JOIN issue_4254_media_item_to_media_item_categories detail ON key_data_result.id = detail.media_item_id

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @now Timestamp -- DateTime2
SET     @now = '2023-08-30 17:44:16.632'::timestamp
DECLARE @userId Uuid -- Guid
SET     @userId = '9ecd0a88-9972-411b-b51e-7213898078b3'::uuid
DECLARE @now_1 Timestamp -- DateTime2
SET     @now_1 = '2023-08-30 17:44:16.632'::timestamp
DECLARE @now_2 Timestamp -- DateTime2
SET     @now_2 = '2023-08-30 17:44:16.632'::timestamp

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
			y_2.expires_at > :now_2
	))

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_item_user_share

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS issue_4254_media_items


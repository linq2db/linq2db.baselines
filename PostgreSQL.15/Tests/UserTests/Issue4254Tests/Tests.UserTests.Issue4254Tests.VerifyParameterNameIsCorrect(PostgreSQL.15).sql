-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_item_user_share

-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_items

-- PostgreSQL.15 PostgreSQL13

CREATE TABLE issue_4254_media_items
(
	id uuid NOT NULL,

	CONSTRAINT "PK_issue_4254_media_items" PRIMARY KEY (id)
)

-- PostgreSQL.15 PostgreSQL13

CREATE TABLE issue_4254_media_item_user_share
(
	id            uuid      NOT NULL,
	media_item_id uuid      NOT NULL,
	created_by_id uuid      NOT NULL,
	user_id       uuid      NOT NULL,
	expires_at    TimeStamp NOT NULL,

	CONSTRAINT "PK_issue_4254_media_item_user_share" PRIMARY KEY (id)
)

-- PostgreSQL.15 PostgreSQL13

CREATE TABLE issue_4254_media_item_to_media_item_categories
(
	id            uuid NOT NULL,
	category_id   uuid NOT NULL,
	media_item_id uuid NOT NULL,

	CONSTRAINT "PK_issue_4254_media_item_to_media_item_categories" PRIMARY KEY (id)
)

SELECT
	m_1.id,
	d.category_id
FROM
	issue_4254_media_items m_1
		INNER JOIN issue_4254_media_item_to_media_item_categories d ON m_1.id = d.media_item_id
WHERE
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y
		WHERE
			m_1.id = y.media_item_id AND y.user_id = :userId AND
			y.expires_at > :now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			m_1.id = y_1.media_item_id AND y_1.created_by_id = :userId AND
			y_1.expires_at > :now
	)
;
SELECT
	x.id,
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y
		WHERE
			x.id = y.media_item_id AND y.expires_at > :now
	)
FROM
	issue_4254_media_items x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			x.id = y_1.media_item_id AND y_1.user_id = :userId AND
			y_1.expires_at > :now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_2
		WHERE
			x.id = y_2.media_item_id AND y_2.created_by_id = :userId AND
			y_2.expires_at > :now
	)

SELECT
	m_1.id,
	d.category_id
FROM
	issue_4254_media_items m_1
		INNER JOIN issue_4254_media_item_to_media_item_categories d ON m_1.id = d.media_item_id
WHERE
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y
		WHERE
			m_1.id = y.media_item_id AND y.user_id = :userId AND
			y.expires_at > :now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			m_1.id = y_1.media_item_id AND y_1.created_by_id = :userId AND
			y_1.expires_at > :now
	)
;
SELECT
	x.id,
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y
		WHERE
			x.id = y.media_item_id AND y.expires_at > :now
	)
FROM
	issue_4254_media_items x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_1
		WHERE
			x.id = y_1.media_item_id AND y_1.user_id = :userId AND
			y_1.expires_at > :now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			issue_4254_media_item_user_share y_2
		WHERE
			x.id = y_2.media_item_id AND y_2.created_by_id = :userId AND
			y_2.expires_at > :now
	)

-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_item_to_media_item_categories

-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_item_user_share

-- PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS issue_4254_media_items


﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1363"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1363"
(
	required_field uuid NOT NULL,
	optional_field uuid     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Uuid -- Guid
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

INSERT INTO "Issue1363"
(
	required_field,
	optional_field
)
VALUES
(
	:id,
	(
		SELECT
			t1.required_field
		FROM
			"Issue1363" t1
		WHERE
			t1.required_field IS NULL
	)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Uuid -- Guid
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @testId Uuid -- Guid
SET     @testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid

INSERT INTO "Issue1363"
(
	required_field,
	optional_field
)
VALUES
(
	:id,
	(
		SELECT
			t1.required_field
		FROM
			"Issue1363" t1
		WHERE
			t1.required_field = :testId
	)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id2 Uuid -- Guid
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1.required_field,
	t1.optional_field
FROM
	"Issue1363" t1
WHERE
	t1.required_field = :id2
LIMIT :take

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1363"


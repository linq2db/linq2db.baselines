﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

CREATE TABLE "User"
(
	city      text     NULL,
	user_name text     NULL,
	street    text     NULL
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	u.city
FROM
	"User" u

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	u.street
FROM
	"User" u

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "User"


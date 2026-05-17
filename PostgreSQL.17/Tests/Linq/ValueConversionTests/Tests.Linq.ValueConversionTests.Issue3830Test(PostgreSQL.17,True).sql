-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" IS NULL AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" IS NULL AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" IS NULL AND r."Bool1" = 'Y' AND r."Bool2" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = 'Y' AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND r."Bool2" IS NULL AND r."Bool3" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = 'Y' AND r."Bool1" = 'N' AND r."Bool2" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND r."Bool2" IS NULL AND r."Bool3" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = 'N' AND r."Bool3" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND r."Bool2" = 'Y' AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND r."Bool2" = 'Y' AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" IS NULL AND r."Bool1" = 'N' AND r."Bool2" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = 'N' AND r."Bool3" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" = 'N' AND r."Bool3" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" = 'N' AND r."Bool3" = 'Y'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = 'Y' AND r."Bool1" = 'Y' AND r."Bool2" = 'N'

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = 'Y' AND r."Bool3" = 'Y'


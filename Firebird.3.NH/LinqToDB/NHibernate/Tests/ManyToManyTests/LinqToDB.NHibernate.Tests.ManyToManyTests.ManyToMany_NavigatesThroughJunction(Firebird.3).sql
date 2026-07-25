-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_authorbook t1


-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_books t1


-- Firebird.3 Firebird3
DELETE FROM
	l2dbnh_authors t1


select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

select gen_id(hibernate_sequence, 1 ) from RDB$DATABASE

INSERT INTO l2dbnh_authors (name, id) VALUES (@p0, @p1);@p0 = 'Asimov' [Type: String (6:0:0)], @p1 = 31 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authors (name, id) VALUES (@p0, @p1);@p0 = 'Clarke' [Type: String (6:0:0)], @p1 = 32 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = 'Foundation' [Type: String (10:0:0)], @p1 = 33 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = 'I, Robot' [Type: String (8:0:0)], @p1 = 34 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_books (title, id) VALUES (@p0, @p1);@p0 = '2001' [Type: String (4:0:0)], @p1 = 35 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 31 [Type: Int32 (0:0:0)], @p1 = 33 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 31 [Type: Int32 (0:0:0)], @p1 = 34 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_authorbook (authorid, bookid) VALUES (@p0, @p1);@p0 = 32 [Type: Int32 (0:0:0)], @p1 = 35 [Type: Int32 (0:0:0)]

-- Firebird.3 Firebird3
SELECT
	a.id
FROM
	l2dbnh_authors a
WHERE
	a.name = 'Asimov'
FETCH NEXT 1 ROWS ONLY


-- Firebird.3 Firebird3
DECLARE @asimovId Integer -- Int32
SET     @asimovId = 31

SELECT
	o.title
FROM
	l2dbnh_authors a
		INNER JOIN l2dbnh_authorbook j ON j.authorid = a.id
		INNER JOIN l2dbnh_books o ON o.id = j.bookid
WHERE
	a.id = @asimovId
ORDER BY
	o.title


select book2_.title as col_0_0_ from l2dbnh_authors author0_ inner join l2dbnh_authorbook books1_ on author0_.id=books1_.authorid inner join l2dbnh_books book2_ on books1_.bookid=book2_.id where author0_.id=@p0 order by book2_.title asc;@p0 = 31 [Type: Int32 (0:0:0)]


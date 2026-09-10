-- YDB Ydb
DECLARE $Uid Bytes(16) -- Binary
SET     $Uid = '\x3D\x66\x7B\xBC\xDE\x0F\x27\x43\x8F\x92\x5D\x8C\xC3\xA1\x1D\x11's
DECLARE $Id Int64
SET     $Id = 0l

UPDATE
	Issue3060Table
SET
	`Uid` = $Uid
WHERE
	Issue3060Table.Id = $Id


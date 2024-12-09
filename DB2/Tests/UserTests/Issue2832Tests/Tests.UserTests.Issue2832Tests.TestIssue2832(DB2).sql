(185526) SELECT 
	t185526.Id = t185525.Id
FROM [DctSetpointtype(185525)] as t185525 (spt)
		LEFT JOIN (
			[VWellTree(185528)] as t185528 (t2)
				INNER JOIN [DctOu(185530)] as t185530 (tp2) ON ({t185528.ShopId?}? = {t185530.Id})
				LEFT JOIN [UacUsersDatagroup(185533)] as t185533 (cudg) ON ({t185530.Id} = {t185533.DatagroupId} AND {t185533.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(185538)] as t185538 (oudg) ON ({t185530.ParentId?}? = {t185538.DatagroupId} AND {t185538.UserId} = 150 AND {t185538.Inheritablepermission} > 0)
				INNER JOIN [Deviation(185558)] as t185558 (d) ON ({t185528.WellId?}? = {t185558.WellId})
		)  ON ({t185558.SetpointtypeId} = {t185525.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t185533.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t185538.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

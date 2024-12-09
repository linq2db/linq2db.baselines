(491539) SELECT 
	t491539.Id = t491538.Id
FROM [DctSetpointtype(491538)] as t491538 (spt)
		LEFT JOIN (
			[VWellTree(491541)] as t491541 (t2)
				INNER JOIN [DctOu(491543)] as t491543 (tp2) ON ({t491541.ShopId?}? = {t491543.Id})
				LEFT JOIN [UacUsersDatagroup(491546)] as t491546 (cudg) ON ({t491543.Id} = {t491546.DatagroupId} AND {t491546.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491551)] as t491551 (oudg) ON ({t491543.ParentId?}? = {t491551.DatagroupId} AND {t491551.UserId} = 150 AND {t491551.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491571)] as t491571 (d) ON ({t491541.WellId?}? = {t491571.WellId})
		)  ON ({t491571.SetpointtypeId} = {t491538.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491546.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491551.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

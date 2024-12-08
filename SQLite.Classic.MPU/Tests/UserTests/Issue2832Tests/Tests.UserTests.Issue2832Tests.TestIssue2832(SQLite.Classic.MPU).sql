(426127) SELECT 
	t426127.Id = t426126.Id
FROM [DctSetpointtype(426126)] as t426126 (spt)
		LEFT JOIN (
			[VWellTree(426129)] as t426129 (t2)
				INNER JOIN [DctOu(426131)] as t426131 (tp2) ON ({t426129.ShopId?}? = {t426131.Id})
				LEFT JOIN [UacUsersDatagroup(426134)] as t426134 (cudg) ON ({t426131.Id} = {t426134.DatagroupId} AND {t426134.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426139)] as t426139 (oudg) ON ({t426131.ParentId?}? = {t426139.DatagroupId} AND {t426139.UserId} = 150 AND {t426139.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426159)] as t426159 (d) ON ({t426129.WellId?}? = {t426159.WellId})
		)  ON ({t426159.SetpointtypeId} = {t426126.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426134.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426139.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

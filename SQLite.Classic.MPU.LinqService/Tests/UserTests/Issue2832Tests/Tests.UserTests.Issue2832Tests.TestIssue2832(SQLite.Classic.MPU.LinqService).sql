(426229) SELECT 
	t426229.Id = t426228.Id
FROM [DctSetpointtype(426228)] as t426228 (spt)
		LEFT JOIN (
			[VWellTree(426231)] as t426231 (t2)
				INNER JOIN [DctOu(426233)] as t426233 (tp2) ON ({t426231.ShopId?}? = {t426233.Id})
				LEFT JOIN [UacUsersDatagroup(426236)] as t426236 (cudg) ON ({t426233.Id} = {t426236.DatagroupId} AND {t426236.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426241)] as t426241 (oudg) ON ({t426233.ParentId?}? = {t426241.DatagroupId} AND {t426241.UserId} = 150 AND {t426241.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426261)] as t426261 (d) ON ({t426231.WellId?}? = {t426261.WellId})
		)  ON ({t426261.SetpointtypeId} = {t426228.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426236.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426241.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

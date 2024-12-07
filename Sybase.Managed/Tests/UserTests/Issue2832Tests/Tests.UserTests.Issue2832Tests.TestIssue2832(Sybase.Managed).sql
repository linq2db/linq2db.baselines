(157099) SELECT 
	t157099.Id = t157098.Id
FROM [DctSetpointtype(157098)] as t157098 (spt)
		LEFT JOIN (
			[VWellTree(157101)] as t157101 (t2)
				INNER JOIN [DctOu(157103)] as t157103 (tp2) ON ({t157101.ShopId?}? = {t157103.Id})
				LEFT JOIN [UacUsersDatagroup(157106)] as t157106 (cudg) ON ({t157103.Id} = {t157106.DatagroupId} AND {t157106.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157111)] as t157111 (oudg) ON ({t157103.ParentId?}? = {t157111.DatagroupId} AND {t157111.UserId} = 150 AND {t157111.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157131)] as t157131 (d) ON ({t157101.WellId?}? = {t157131.WellId})
		)  ON ({t157131.SetpointtypeId} = {t157098.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157106.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t157111.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

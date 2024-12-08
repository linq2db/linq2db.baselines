(94996) SELECT 
	t94996.Id = t94995.Id
FROM [DctSetpointtype(94995)] as t94995 (spt)
		LEFT JOIN (
			[VWellTree(94998)] as t94998 (t2)
				INNER JOIN [DctOu(95000)] as t95000 (tp2) ON ({t94998.ShopId?}? = {t95000.Id})
				LEFT JOIN [UacUsersDatagroup(95003)] as t95003 (cudg) ON ({t95000.Id} = {t95003.DatagroupId} AND {t95003.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(95008)] as t95008 (oudg) ON ({t95000.ParentId?}? = {t95008.DatagroupId} AND {t95008.UserId} = 150 AND {t95008.Inheritablepermission} > 0)
				INNER JOIN [Deviation(95028)] as t95028 (d) ON ({t94998.WellId?}? = {t95028.WellId})
		)  ON ({t95028.SetpointtypeId} = {t94995.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t95003.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t95008.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

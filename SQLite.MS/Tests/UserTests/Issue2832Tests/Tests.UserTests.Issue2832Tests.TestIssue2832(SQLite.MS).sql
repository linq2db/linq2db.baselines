(701096) SELECT 
	t701096.Id = t701095.Id
FROM [DctSetpointtype(701095)] as t701095 (spt)
		LEFT JOIN (
			[VWellTree(701098)] as t701098 (t2)
				INNER JOIN [DctOu(701100)] as t701100 (tp2) ON ({t701098.ShopId?}? = {t701100.Id})
				LEFT JOIN [UacUsersDatagroup(701103)] as t701103 (cudg) ON ({t701100.Id} = {t701103.DatagroupId} AND {t701103.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(701108)] as t701108 (oudg) ON ({t701100.ParentId?}? = {t701108.DatagroupId} AND {t701108.UserId} = 150 AND {t701108.Inheritablepermission} > 0)
				INNER JOIN [Deviation(701128)] as t701128 (d) ON ({t701098.WellId?}? = {t701128.WellId})
		)  ON ({t701128.SetpointtypeId} = {t701095.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t701103.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t701108.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

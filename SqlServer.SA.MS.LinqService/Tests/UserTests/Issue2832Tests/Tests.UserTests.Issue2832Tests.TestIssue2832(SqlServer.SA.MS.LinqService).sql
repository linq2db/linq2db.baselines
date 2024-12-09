(500977) SELECT 
	t500977.Id = t500976.Id
FROM [DctSetpointtype(500976)] as t500976 (spt)
		LEFT JOIN (
			[VWellTree(500979)] as t500979 (t2)
				INNER JOIN [DctOu(500981)] as t500981 (tp2) ON ({t500979.ShopId?}? = {t500981.Id})
				LEFT JOIN [UacUsersDatagroup(500984)] as t500984 (cudg) ON ({t500981.Id} = {t500984.DatagroupId} AND {t500984.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(500989)] as t500989 (oudg) ON ({t500981.ParentId?}? = {t500989.DatagroupId} AND {t500989.UserId} = 150 AND {t500989.Inheritablepermission} > 0)
				INNER JOIN [Deviation(501009)] as t501009 (d) ON ({t500979.WellId?}? = {t501009.WellId})
		)  ON ({t501009.SetpointtypeId} = {t500976.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t500984.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t500989.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)

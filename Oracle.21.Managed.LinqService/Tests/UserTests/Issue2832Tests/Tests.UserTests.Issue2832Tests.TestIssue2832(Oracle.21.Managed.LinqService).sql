(140084) SELECT 
	t140084.Id = t140083.Id
FROM [DctSetpointtype(140083)] as t140083 (spt)
		LEFT JOIN (
			[VWellTree(140086)] as t140086 (t2)
				INNER JOIN [DctOu(140088)] as t140088 (tp2) ON ({t140086.ShopId?}? = {t140088.Id})
				LEFT JOIN [UacUsersDatagroup(140091)] as t140091 (cudg) ON ({t140088.Id} = {t140091.DatagroupId} AND {t140091.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140096)] as t140096 (oudg) ON ({t140088.ParentId?}? = {t140096.DatagroupId} AND {t140096.UserId} = 150 AND {t140096.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140116)] as t140116 (d) ON ({t140086.WellId?}? = {t140116.WellId})
		)  ON ({t140116.SetpointtypeId} = {t140083.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140091.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140096.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

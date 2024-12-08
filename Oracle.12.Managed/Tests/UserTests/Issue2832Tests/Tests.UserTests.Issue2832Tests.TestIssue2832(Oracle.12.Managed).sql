(140765) SELECT 
	t140765.Id = t140764.Id
FROM [DctSetpointtype(140764)] as t140764 (spt)
		LEFT JOIN (
			[VWellTree(140767)] as t140767 (t2)
				INNER JOIN [DctOu(140769)] as t140769 (tp2) ON ({t140767.ShopId?}? = {t140769.Id})
				LEFT JOIN [UacUsersDatagroup(140772)] as t140772 (cudg) ON ({t140769.Id} = {t140772.DatagroupId} AND {t140772.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140777)] as t140777 (oudg) ON ({t140769.ParentId?}? = {t140777.DatagroupId} AND {t140777.UserId} = 150 AND {t140777.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140797)] as t140797 (d) ON ({t140767.WellId?}? = {t140797.WellId})
		)  ON ({t140797.SetpointtypeId} = {t140764.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140772.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140777.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

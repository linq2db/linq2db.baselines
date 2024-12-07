(140034) SELECT 
	t140034.Id = t140033.Id
FROM [DctSetpointtype(140033)] as t140033 (spt)
		LEFT JOIN (
			[VWellTree(140036)] as t140036 (t2)
				INNER JOIN [DctOu(140038)] as t140038 (tp2) ON ({t140036.ShopId?}? = {t140038.Id})
				LEFT JOIN [UacUsersDatagroup(140041)] as t140041 (cudg) ON ({t140038.Id} = {t140041.DatagroupId} AND {t140041.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140046)] as t140046 (oudg) ON ({t140038.ParentId?}? = {t140046.DatagroupId} AND {t140046.UserId} = 150 AND {t140046.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140066)] as t140066 (d) ON ({t140036.WellId?}? = {t140066.WellId})
		)  ON ({t140066.SetpointtypeId} = {t140033.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140041.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140046.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

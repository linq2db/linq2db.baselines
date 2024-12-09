(140880) SELECT 
	t140880.Id = t140879.Id
FROM [DctSetpointtype(140879)] as t140879 (spt)
		LEFT JOIN (
			[VWellTree(140882)] as t140882 (t2)
				INNER JOIN [DctOu(140884)] as t140884 (tp2) ON ({t140882.ShopId?}? = {t140884.Id})
				LEFT JOIN [UacUsersDatagroup(140887)] as t140887 (cudg) ON ({t140884.Id} = {t140887.DatagroupId} AND {t140887.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140892)] as t140892 (oudg) ON ({t140884.ParentId?}? = {t140892.DatagroupId} AND {t140892.UserId} = 150 AND {t140892.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140912)] as t140912 (d) ON ({t140882.WellId?}? = {t140912.WellId})
		)  ON ({t140912.SetpointtypeId} = {t140879.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140887.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140892.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

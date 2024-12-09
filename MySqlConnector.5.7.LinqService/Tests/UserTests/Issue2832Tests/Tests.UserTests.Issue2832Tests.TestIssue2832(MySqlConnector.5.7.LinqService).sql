(318468) SELECT 
	t318468.Id = t318467.Id
FROM [DctSetpointtype(318467)] as t318467 (spt)
		LEFT JOIN (
			[VWellTree(318470)] as t318470 (t2)
				INNER JOIN [DctOu(318472)] as t318472 (tp2) ON ({t318470.ShopId?}? = {t318472.Id})
				LEFT JOIN [UacUsersDatagroup(318475)] as t318475 (cudg) ON ({t318472.Id} = {t318475.DatagroupId} AND {t318475.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318480)] as t318480 (oudg) ON ({t318472.ParentId?}? = {t318480.DatagroupId} AND {t318480.UserId} = 150 AND {t318480.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318500)] as t318500 (d) ON ({t318470.WellId?}? = {t318500.WellId})
		)  ON ({t318500.SetpointtypeId} = {t318467.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318475.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318480.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)

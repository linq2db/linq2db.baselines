(194900) SELECT 
	t194900.Id = t194899.Id
FROM [DctSetpointtype(194899)] as t194899 (spt)
		LEFT JOIN (
			[VWellTree(194902)] as t194902 (t2)
				INNER JOIN [DctOu(194904)] as t194904 (tp2) ON ({t194902.ShopId?}? = {t194904.Id})
				LEFT JOIN [UacUsersDatagroup(194907)] as t194907 (cudg) ON ({t194904.Id} = {t194907.DatagroupId} AND {t194907.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194912)] as t194912 (oudg) ON ({t194904.ParentId?}? = {t194912.DatagroupId} AND {t194912.UserId} = 150 AND {t194912.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194932)] as t194932 (d) ON ({t194902.WellId?}? = {t194932.WellId})
		)  ON ({t194932.SetpointtypeId} = {t194899.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194907.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194912.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

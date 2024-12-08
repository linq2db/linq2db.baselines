(140900) SELECT 
	t140900.Id = t140899.Id
FROM [DctSetpointtype(140899)] as t140899 (spt)
		LEFT JOIN (
			[VWellTree(140902)] as t140902 (t2)
				INNER JOIN [DctOu(140904)] as t140904 (tp2) ON ({t140902.ShopId?}? = {t140904.Id})
				LEFT JOIN [UacUsersDatagroup(140907)] as t140907 (cudg) ON ({t140904.Id} = {t140907.DatagroupId} AND {t140907.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140912)] as t140912 (oudg) ON ({t140904.ParentId?}? = {t140912.DatagroupId} AND {t140912.UserId} = 150 AND {t140912.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140932)] as t140932 (d) ON ({t140902.WellId?}? = {t140932.WellId})
		)  ON ({t140932.SetpointtypeId} = {t140899.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140907.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140912.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)

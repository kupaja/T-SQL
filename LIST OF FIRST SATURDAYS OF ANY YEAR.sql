--Find out first saturday of all months in any year


Declare @d datetime
    set @d = GETDATE()
Declare @month int
    set @month = 1

While @month <= 12
             Begin
				Declare @first datetime
				set @first = CONVERT(varchar,@month) + '/01/' + CONVERT(varchar,DATEPART(yyyy, @d))

                Declare @dayofweek int
                set @dayofweek = DATEPART(dw,@first)
  
				 print @first + (7 - @dayofweek)
				 set @month = @month + 1
				 end


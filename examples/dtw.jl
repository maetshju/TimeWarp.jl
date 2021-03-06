using TimeWarp
using TimeWarp.WarpPlots
using TimeWarp.Datasets
pyplot()

# UCI data repository must be downloaded first, run TimeWarp.download_data()
data = ucr_traindata("Gun_Point");

y1 = Sequence(data[1][:,1]) 
y2 = Sequence(data[1][:,2])

#dtwplot(y1,y2,clim=[0,1])
dtwplot(y1,y2)
savefig("dtw.png")

if is_linux()
  show()
end


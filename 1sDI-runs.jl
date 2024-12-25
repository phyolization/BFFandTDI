include("ms1sDI.jl")
using Plots, DelimitedFiles, DoubleFloats

@time begin
  keyrate(pi/4,.500845,1; m=15, q=0)
end

### Finding the critical detection efficiency ####################################################
# η1=0
# loop=1;loops=30
# v=1
# # η0 = 0.50084174218749999418776042148
# # η2 = 0.5008434843750000364792640539235435426235
# # η0 = BigFloat(0.50084174)
# # η2 = BigFloat(0.50084401461354684315400000000000000032602176)
# η0 = Double64(0.5008417421874999941877604214823804795742034912109375)
# η2 = Double64(0.5008434843750000364792640539235435426235)
# kr=1
# while kr>1e-6 && loop<=loops
#   η1=(η0+η2)/2
#   print(η0,'\t',η2,'\t')
#   kr=keyrate(pi/4,η1,v; m=15, q=0)
#   print(kr,'\n')
#   if kr<0
#     η0=η1
#     kr=1
#   else
#     η2=η1
#   end
#   loop=loop+1
# end
# print('\n',η1,' ',kr)


#### Finding the rate vs de relation  ####################################################
# η=[Double64(0.50084261328125);collect(Double64(0.50085):0.001:Double64(0.515));collect(0.52:0.02:1)]
# v=1
# z=zeros(length(η))
# for i = 1:length(η)
#     z[i]=keyrate(pi/4,η[i],v; m=15, q=0)
#     # best_qstrat(pi/4,η[i];level="2+ A B E",m=16)
#     print(i," ")
#     # z[i]=η[i]
# end

# plt=plot(η,z, title="keyrate -- detection efficiency", yscale=:log10,label="keyrate", linewidth=2)
# yticks!([10^-9,10^-8,10^-7,10^-6,10^-5,10^-4,10^-3,10^-2,10^-1,10^-0])
# xlabel!("D.E.")
# ylabel!("keyrate")
          # writedlm("rate--de.csv", [η;;z], ',')


#### Finding the tradeoff relation of visibility and detection efficiency ####################################
# v=[collect(0.78:0.01:.98);collect(0.99:0.002:1.0)]
# η_cri=zeros(length(v))
# kr_rcd=zeros(length(v))
# loops=50
# for ii=1:length(v)
#   η0=0.45; η2=1.0;
#   loop=1
#   kr=1
#   while kr > 1e-6 && loop<=loops
#     η1=(η0+η2)/2
#     kr=keyrate(pi/4,η1,v[ii]; m=15, q=0)
#     # print(kr,'\n')
#     if kr<0
#       η0=η1
#       kr=1
#     else
#       η_cri[ii]=η1
#       kr_rcd[ii]=kr
#       η2=η1
#     end

#       loop=loop+1

#   end
#   print('[',ii,"] ",loop,' ')
# end
#   writedlm("v--de_data.csv", [v;;η_cri], ',')







#### Plots ###########################

#   data=readdlm("datacom.csv",',')
#   η=zeros(1,size(data)[1])
#   z=zeros(1,size(data)[1])
#   η=data[:,1]
#   z=data[:,2]
# plt=plot(η,z, title="keyrate -- detection efficiency", yscale=:log10,label="keyrate", linewidth=2)
# yticks!([10^-9,10^-8,10^-7,10^-6,10^-5,10^-4,10^-3,10^-2,10^-1,10^-0])
# xlabel!("D.E.")
# ylabel!("keyrate")
#   savefig("1sdi.pdf")


  

# plt=plot(v,η_cri, title="visibility -- D.E.", label=" ", linewidth=2, linecolor="red")
# xlabel!("visibility")
# ylabel!("D.E.")
  # savefig("v--de.pdf")
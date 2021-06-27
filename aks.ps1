{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 .AppleSystemUIFontMonospaced-Regular;}
{\colortbl;\red255\green255\blue255;\red189\green198\blue208;}
{\*\expandedcolortbl;;\cssrgb\c78824\c81961\c85098;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl345\partightenfactor0

\f0\fs23\fsmilli11900 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 az aks create -g $group -n aks-cluster -l $region \\\
--node-count 3 --node-vm-size Standard_DS2_v2 \\\
--verbose --generate-ssh-keys \\\
--service-principal \'93c62e7ca4-2b16-40d6-b1a6-a8c2207a2727\'94 \\\
--client-secret "80ead3a2-d8b0-479d-aaf0-d7c78cf36a2a"\
}
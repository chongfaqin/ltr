��
�+�+
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
;
Diag
diagonal"T
output"T"
Ttype:

2	
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
�
)
Exit	
data"T
output"T"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
.
Log1p
x"T
y"T"
Ttype:

2
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
�
StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:�
9
TensorArraySizeV3

handle
flow_in
size�
�
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring �
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype�
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02
b'unknown'��

r
ranking/featurePlaceholder*
dtype0*'
_output_shapes
:���������<*
shape:���������<
Q
ranking/trainingPlaceholder*
dtype0
*
_output_shapes
: *
shape: 
p
ranking/labelPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
w
ranking/sorted_labelPlaceholder*'
_output_shapes
:���������*
shape:���������*
dtype0
n
ranking/qidPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
`
ranking/Variable/initial_valueConst*
_output_shapes
: *
value	B : *
dtype0
t
ranking/Variable
VariableV2*
shared_name *
dtype0*
_output_shapes
: *
	container *
shape: 
�
ranking/Variable/AssignAssignranking/Variableranking/Variable/initial_value*
use_locking(*
T0*#
_class
loc:@ranking/Variable*
validate_shape(*
_output_shapes
: 
y
ranking/Variable/readIdentityranking/Variable*
T0*#
_class
loc:@ranking/Variable*
_output_shapes
: 
k
&ranking/ExponentialDecay/learning_rateConst*
_output_shapes
: *
valueB
 *
�#<*
dtype0
b
ranking/ExponentialDecay/Cast/xConst*
value
B :�*
dtype0*
_output_shapes
: 
v
ranking/ExponentialDecay/CastCastranking/ExponentialDecay/Cast/x*
_output_shapes
: *

DstT0*

SrcT0
f
!ranking/ExponentialDecay/Cast_1/xConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
n
ranking/ExponentialDecay/Cast_2Castranking/Variable/read*
_output_shapes
: *

DstT0*

SrcT0
�
 ranking/ExponentialDecay/truedivRealDivranking/ExponentialDecay/Cast_2ranking/ExponentialDecay/Cast*
T0*
_output_shapes
: 
�
ranking/ExponentialDecay/PowPow!ranking/ExponentialDecay/Cast_1/x ranking/ExponentialDecay/truediv*
T0*
_output_shapes
: 
�
ranking/ExponentialDecayMul&ranking/ExponentialDecay/learning_rateranking/ExponentialDecay/Pow*
_output_shapes
: *
T0
S
ranking/batch_sizePlaceholder*
dtype0*
_output_shapes
: *
shape: 
�
Sdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/shapeConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB"<   @   *
dtype0*
_output_shapes
:
�
Qdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/minConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB
 *�?a�*
dtype0*
_output_shapes
: 
�
Qdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/maxConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB
 *�?a>*
dtype0*
_output_shapes
: 
�
[dense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/RandomUniformRandomUniformSdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:<@*
seed���)*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel
�
Qdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/subSubQdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/maxQdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
_output_shapes
: 
�
Qdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/mulMul[dense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/RandomUniformQdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/sub*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
_output_shapes

:<@
�
Mdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniformAddQdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/mulQdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
_output_shapes

:<@
�
2dense_block/dense_block-dense_block_mode1-0/kernel
VariableV2*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
	container *
shape
:<@*
dtype0*
_output_shapes

:<@
�
9dense_block/dense_block-dense_block_mode1-0/kernel/AssignAssign2dense_block/dense_block-dense_block_mode1-0/kernelMdense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
7dense_block/dense_block-dense_block_mode1-0/kernel/readIdentity2dense_block/dense_block-dense_block_mode1-0/kernel*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
_output_shapes

:<@*
T0
�
Bdense_block/dense_block-dense_block_mode1-0/bias/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
0dense_block/dense_block-dense_block_mode1-0/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
	container *
shape:@
�
7dense_block/dense_block-dense_block_mode1-0/bias/AssignAssign0dense_block/dense_block-dense_block_mode1-0/biasBdense_block/dense_block-dense_block_mode1-0/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(
�
5dense_block/dense_block-dense_block_mode1-0/bias/readIdentity0dense_block/dense_block-dense_block_mode1-0/bias*
_output_shapes
:@*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias
�
:ranking/dense_block/dense_block-dense_block_mode1-0/MatMulMatMulranking/feature7dense_block/dense_block-dense_block_mode1-0/kernel/read*'
_output_shapes
:���������@*
transpose_a( *
transpose_b( *
T0
�
;ranking/dense_block/dense_block-dense_block_mode1-0/BiasAddBiasAdd:ranking/dense_block/dense_block-dense_block_mode1-0/MatMul5dense_block/dense_block-dense_block_mode1-0/bias/read*'
_output_shapes
:���������@*
T0*
data_formatNHWC
�
ranking/dense_block/ReluRelu;ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd*'
_output_shapes
:���������@*
T0
�
Sdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/shapeConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB"@       *
dtype0*
_output_shapes
:
�
Qdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/minConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB
 *  ��*
dtype0*
_output_shapes
: 
�
Qdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/maxConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
[dense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/RandomUniformRandomUniformSdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@ *
seed���)*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
seed2�
�
Qdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/subSubQdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/maxQdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/min*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
_output_shapes
: *
T0
�
Qdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/mulMul[dense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/RandomUniformQdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@ *
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel
�
Mdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniformAddQdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/mulQdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform/min*
_output_shapes

:@ *
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel
�
2dense_block/dense_block-dense_block_mode1-1/kernel
VariableV2*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
	container *
shape
:@ *
dtype0*
_output_shapes

:@ 
�
9dense_block/dense_block-dense_block_mode1-1/kernel/AssignAssign2dense_block/dense_block-dense_block_mode1-1/kernelMdense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
7dense_block/dense_block-dense_block_mode1-1/kernel/readIdentity2dense_block/dense_block-dense_block_mode1-1/kernel*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
_output_shapes

:@ 
�
Bdense_block/dense_block-dense_block_mode1-1/bias/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
0dense_block/dense_block-dense_block_mode1-1/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
	container 
�
7dense_block/dense_block-dense_block_mode1-1/bias/AssignAssign0dense_block/dense_block-dense_block_mode1-1/biasBdense_block/dense_block-dense_block_mode1-1/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: 
�
5dense_block/dense_block-dense_block_mode1-1/bias/readIdentity0dense_block/dense_block-dense_block_mode1-1/bias*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
_output_shapes
: 
�
<ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMulMatMulranking/dense_block/Relu7dense_block/dense_block-dense_block_mode1-1/kernel/read*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b( 
�
=ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAddBiasAdd<ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul5dense_block/dense_block-dense_block_mode1-1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
�
ranking/dense_block_1/ReluRelu=ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd*'
_output_shapes
:��������� *
T0
�
Sdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/shapeConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
valueB"       *
dtype0*
_output_shapes
:
�
Qdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/minConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
valueB
 *���*
dtype0*
_output_shapes
: 
�
Qdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/maxConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
valueB
 *��>*
dtype0*
_output_shapes
: 
�
[dense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/RandomUniformRandomUniformSdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/shape*
seed2�*
dtype0*
_output_shapes

: *
seed���)*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel
�
Qdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/subSubQdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/maxQdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
_output_shapes
: 
�
Qdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/mulMul[dense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/RandomUniformQdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel
�
Mdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniformAddQdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/mulQdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
_output_shapes

: 
�
2dense_block/dense_block-dense_block_mode1-2/kernel
VariableV2*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
9dense_block/dense_block-dense_block_mode1-2/kernel/AssignAssign2dense_block/dense_block-dense_block_mode1-2/kernelMdense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
7dense_block/dense_block-dense_block_mode1-2/kernel/readIdentity2dense_block/dense_block-dense_block_mode1-2/kernel*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
_output_shapes

: 
�
Bdense_block/dense_block-dense_block_mode1-2/bias/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
0dense_block/dense_block-dense_block_mode1-2/bias
VariableV2*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
7dense_block/dense_block-dense_block_mode1-2/bias/AssignAssign0dense_block/dense_block-dense_block_mode1-2/biasBdense_block/dense_block-dense_block_mode1-2/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:
�
5dense_block/dense_block-dense_block_mode1-2/bias/readIdentity0dense_block/dense_block-dense_block_mode1-2/bias*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
_output_shapes
:
�
<ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMulMatMulranking/dense_block_1/Relu7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
=ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAddBiasAdd<ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul5dense_block/dense_block-dense_block_mode1-2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
ranking/dense_block_2/ReluRelu=ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd*
T0*'
_output_shapes
:���������
�
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *0�*
dtype0*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *0?*
dtype0*
_output_shapes
: 
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
_output_shapes

:*
seed���)*
T0*
_class
loc:@dense/kernel*
seed2�*
dtype0
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
dense/kernel
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container *
shape
:
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
u
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias*
valueB*    
�

dense/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias*
	container *
shape:
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes
:
�
ranking/dense/MatMulMatMulranking/dense_block_2/Reludense/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
ranking/dense/BiasAddBiasAddranking/dense/MatMuldense/bias/read*'
_output_shapes
:���������*
T0*
data_formatNHWC
b
ranking/scoreIdentityranking/dense/BiasAdd*'
_output_shapes
:���������*
T0
F
transpose/RankRankranking/label*
T0*
_output_shapes
: 
Q
transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
V
transpose/subSubtranspose/Ranktranspose/sub/y*
_output_shapes
: *
T0
W
transpose/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
W
transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*#
_output_shapes
:���������*

Tidx0
d
transpose/sub_1Subtranspose/subtranspose/Range*#
_output_shapes
:���������*
T0
u
	transpose	Transposeranking/labeltranspose/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
_
subSubranking/label	transpose*
T0*0
_output_shapes
:������������������
J
mul/yConst*
valueB
 *  �B*
dtype0*
_output_shapes
: 
Q
mulMulsubmul/y*0
_output_shapes
:������������������*
T0
N
	Minimum/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
MinimumMinimum	Minimum/xmul*
T0*0
_output_shapes
:������������������
N
	Maximum/yConst*
valueB
 *  ��*
dtype0*
_output_shapes
: 
a
MaximumMaximumMinimum	Maximum/y*0
_output_shapes
:������������������*
T0
J
add/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
addAddadd/xMaximum*0
_output_shapes
:������������������*
T0
L
mul_1/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
U
mul_1Mulmul_1/xadd*
T0*0
_output_shapes
:������������������
H
transpose_1/RankRankranking/score*
_output_shapes
: *
T0
S
transpose_1/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
transpose_1/subSubtranspose_1/Ranktranspose_1/sub/y*
T0*
_output_shapes
: 
Y
transpose_1/Range/startConst*
_output_shapes
: *
value	B : *
dtype0
Y
transpose_1/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
transpose_1/RangeRangetranspose_1/Range/starttranspose_1/Ranktranspose_1/Range/delta*#
_output_shapes
:���������*

Tidx0
j
transpose_1/sub_1Subtranspose_1/subtranspose_1/Range*
T0*#
_output_shapes
:���������
y
transpose_1	Transposeranking/scoretranspose_1/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
c
sub_1Subranking/scoretranspose_1*0
_output_shapes
:������������������*
T0
L
sub_2/xConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
Y
sub_2Subsub_2/xMaximum*
T0*0
_output_shapes
:������������������
L
mul_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
W
mul_2Mulmul_2/xsub_2*0
_output_shapes
:������������������*
T0
L
mul_3/xConst*
_output_shapes
: *
valueB
 *  ��*
dtype0
W
mul_3Mulmul_3/xsub_1*
T0*0
_output_shapes
:������������������
T
SigmoidSigmoidmul_3*
T0*0
_output_shapes
:������������������
W
sub_3Submul_2Sigmoid*0
_output_shapes
:������������������*
T0
L
mul_4/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
W
mul_4Mulmul_4/xsub_3*
T0*0
_output_shapes
:������������������
g
logistic_loss/zeros_like	ZerosLikesub_1*
T0*0
_output_shapes
:������������������
�
logistic_loss/GreaterEqualGreaterEqualsub_1logistic_loss/zeros_like*
T0*0
_output_shapes
:������������������
�
logistic_loss/SelectSelectlogistic_loss/GreaterEqualsub_1logistic_loss/zeros_like*
T0*0
_output_shapes
:������������������
Z
logistic_loss/NegNegsub_1*
T0*0
_output_shapes
:������������������
�
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/Negsub_1*
T0*0
_output_shapes
:������������������
a
logistic_loss/mulMulsub_1mul_1*
T0*0
_output_shapes
:������������������
|
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0*0
_output_shapes
:������������������
k
logistic_loss/ExpExplogistic_loss/Select_1*0
_output_shapes
:������������������*
T0
j
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0*0
_output_shapes
:������������������
w
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0*0
_output_shapes
:������������������
F
transpose_2/RankRankranking/qid*
T0*
_output_shapes
: 
S
transpose_2/sub/yConst*
dtype0*
_output_shapes
: *
value	B :
\
transpose_2/subSubtranspose_2/Ranktranspose_2/sub/y*
T0*
_output_shapes
: 
Y
transpose_2/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
transpose_2/Range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
�
transpose_2/RangeRangetranspose_2/Range/starttranspose_2/Ranktranspose_2/Range/delta*

Tidx0*#
_output_shapes
:���������
j
transpose_2/sub_1Subtranspose_2/subtranspose_2/Range*
T0*#
_output_shapes
:���������
w
transpose_2	Transposeranking/qidtranspose_2/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
a
sub_4Subranking/qidtranspose_2*
T0*0
_output_shapes
:������������������
L
Equal/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Y
EqualEqualsub_4Equal/y*
T0*0
_output_shapes
:������������������
]
CastCastEqual*

SrcT0
*0
_output_shapes
:������������������*

DstT0
T
ShapeShaperanking/feature*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
N
ones/mulMulstrided_slicestrided_slice*
_output_shapes
: *
T0
N
ones/Less/yConst*
dtype0*
_output_shapes
: *
value
B :�
I
	ones/LessLessones/mulones/Less/y*
T0*
_output_shapes
: 
k
ones/packedPackstrided_slicestrided_slice*
T0*

axis *
N*
_output_shapes
:
O

ones/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
r
onesFillones/packed
ones/Const*
T0*

index_type0*0
_output_shapes
:������������������
P
ones_1/Less/yConst*
_output_shapes
: *
value
B :�*
dtype0
R
ones_1/LessLessstrided_sliceones_1/Less/y*
T0*
_output_shapes
: 
^
ones_1/packedPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
Q
ones_1/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
k
ones_1Fillones_1/packedones_1/Const*
T0*

index_type0*#
_output_shapes
:���������
O
DiagDiagones_1*0
_output_shapes
:������������������*
T0
S
sub_5SubonesDiag*0
_output_shapes
:������������������*
T0
T
mul_5MulCastsub_5*
T0*0
_output_shapes
:������������������
V
ConstConst*
valueB"       *
dtype0*
_output_shapes
:
V
SumSummul_5Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
N
	Equal_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
A
Equal_1EqualSum	Equal_1/y*
_output_shapes
: *
T0
J
cond/SwitchSwitchEqual_1Equal_1*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
B
cond/pred_idIdentityEqual_1*
T0
*
_output_shapes
: 
_

cond/ConstConst^cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
n
cond/mulMulcond/mul/Switchcond/mul/Switch_1*0
_output_shapes
:������������������*
T0
�
cond/mul/SwitchSwitchlogistic_losscond/pred_id*L
_output_shapes:
8:������������������:������������������*
T0* 
_class
loc:@logistic_loss
�
cond/mul/Switch_1Switchmul_5cond/pred_id*
T0*
_class

loc:@mul_5*L
_output_shapes:
8:������������������:������������������
m
cond/Const_1Const^cond/switch_f*
dtype0*
_output_shapes
:*
valueB"       
e
cond/SumSumcond/mulcond/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
W
cond/truedivRealDivcond/Sumcond/truediv/Switch*
T0*
_output_shapes
: 
k
cond/truediv/SwitchSwitchSumcond/pred_id*
T0*
_class

loc:@Sum*
_output_shapes
: : 
Y

cond/MergeMergecond/truediv
cond/Const*
N*
_output_shapes
: : *
T0
U
mul_6Mulmul_4mul_5*0
_output_shapes
:������������������*
T0
R
Cast_1Castranking/batch_size*

SrcT0*
_output_shapes
: *

DstT0
L
add_1/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
>
add_1AddCast_1add_1/y*
_output_shapes
: *
T0
P
range/startConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
O

range/CastCastrange/delta*
_output_shapes
: *

DstT0*

SrcT0
_
rangeRangerange/startadd_1
range/Cast*#
_output_shapes
:���������*

Tidx0
T
Shape_1Shaperanking/label*
out_type0*
_output_shapes
:*
T0
b
ReshapeReshaperangeShape_1*
T0*
Tshape0*'
_output_shapes
:���������
L
add_2/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
P
add_2Addadd_2/xReshape*
T0*'
_output_shapes
:���������
C
LogLogadd_2*'
_output_shapes
:���������*
T0
J
pow/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
R
powPowpow/xranking/label*
T0*'
_output_shapes
:���������
L
sub_6/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
L
sub_6Subpowsub_6/y*'
_output_shapes
:���������*
T0
L
pow_1/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
]
pow_1Powpow_1/xranking/sorted_label*
T0*'
_output_shapes
:���������
L
sub_7/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
N
sub_7Subpow_1sub_7/y*
T0*'
_output_shapes
:���������
P
truedivRealDivsub_6Log*
T0*'
_output_shapes
:���������
X
Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
\
Sum_1SumtruedivConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
Tile/multiples/0Const*
value	B :*
dtype0*
_output_shapes
: 
v
Tile/multiplesPackTile/multiples/0ranking/batch_size*

axis *
N*
_output_shapes
:*
T0
r
TileTiletruedivTile/multiples*

Tmultiples0*
T0*0
_output_shapes
:������������������
>
transpose_3/RankRankLog*
T0*
_output_shapes
: 
S
transpose_3/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
\
transpose_3/subSubtranspose_3/Ranktranspose_3/sub/y*
_output_shapes
: *
T0
Y
transpose_3/Range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Y
transpose_3/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
transpose_3/RangeRangetranspose_3/Range/starttranspose_3/Ranktranspose_3/Range/delta*

Tidx0*#
_output_shapes
:���������
j
transpose_3/sub_1Subtranspose_3/subtranspose_3/Range*
T0*#
_output_shapes
:���������
o
transpose_3	TransposeLogtranspose_3/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
c
	truediv_1RealDivsub_6transpose_3*0
_output_shapes
:������������������*
T0
?
transpose_4/RankRankTile*
T0*
_output_shapes
: 
S
transpose_4/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
transpose_4/subSubtranspose_4/Ranktranspose_4/sub/y*
T0*
_output_shapes
: 
Y
transpose_4/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
transpose_4/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
transpose_4/RangeRangetranspose_4/Range/starttranspose_4/Ranktranspose_4/Range/delta*#
_output_shapes
:���������*

Tidx0
j
transpose_4/sub_1Subtranspose_4/subtranspose_4/Range*
T0*#
_output_shapes
:���������
y
transpose_4	TransposeTiletranspose_4/sub_1*0
_output_shapes
:������������������*
Tperm0*
T0
D
transpose_5/RankRank	truediv_1*
_output_shapes
: *
T0
S
transpose_5/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
transpose_5/subSubtranspose_5/Ranktranspose_5/sub/y*
T0*
_output_shapes
: 
Y
transpose_5/Range/startConst*
dtype0*
_output_shapes
: *
value	B : 
Y
transpose_5/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
transpose_5/RangeRangetranspose_5/Range/starttranspose_5/Ranktranspose_5/Range/delta*#
_output_shapes
:���������*

Tidx0
j
transpose_5/sub_1Subtranspose_5/subtranspose_5/Range*#
_output_shapes
:���������*
T0
~
transpose_5	Transpose	truediv_1transpose_5/sub_1*0
_output_shapes
:������������������*
Tperm0*
T0
T
sub_8SubSum_1Tile*0
_output_shapes
:������������������*
T0
Y
add_3Addsub_8	truediv_1*0
_output_shapes
:������������������*
T0
[
sub_9Subadd_3transpose_4*0
_output_shapes
:������������������*
T0
[
add_4Addsub_9transpose_5*
T0*0
_output_shapes
:������������������
R
	truediv_2RealDivsub_7Log*'
_output_shapes
:���������*
T0
X
Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
^
Sum_2Sum	truediv_2Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
V
sub_10Subadd_4Sum_1*
T0*0
_output_shapes
:������������������
M
AbsAbssub_10*
T0*0
_output_shapes
:������������������
[
	truediv_3RealDivAbsSum_2*
T0*0
_output_shapes
:������������������
Y
mul_7Mulmul_6	truediv_3*0
_output_shapes
:������������������*
T0
I
Const_3Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayTensorArrayV3ranking/batch_size*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( 
�
while/EnterEnterConst_3*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *#

frame_namewhile/while_context
�
while/Enter_1EnterTensorArray:1*
is_constant( *
parallel_iterations
*
_output_shapes
: *#

frame_namewhile/while_context*
T0
b
while/MergeMergewhile/Enterwhile/NextIteration*
T0*
N*
_output_shapes
: : 
h
while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N*
_output_shapes
: : 
R

while/LessLesswhile/Mergewhile/Less/Enter*
_output_shapes
: *
T0
�
while/Less/EnterEnterranking/batch_size*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *#

frame_namewhile/while_context
>
while/LoopCondLoopCond
while/Less*
_output_shapes
: 
v
while/SwitchSwitchwhile/Mergewhile/LoopCond*
T0*
_class
loc:@while/Merge*
_output_shapes
: : 
|
while/Switch_1Switchwhile/Merge_1while/LoopCond*
T0* 
_class
loc:@while/Merge_1*
_output_shapes
: : 
K
while/IdentityIdentitywhile/Switch:1*
T0*
_output_shapes
: 
O
while/Identity_1Identitywhile/Switch_1:1*
T0*
_output_shapes
: 
^
while/add/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
N
	while/addAddwhile/Identitywhile/add/y*
_output_shapes
: *
T0
`
while/add_1/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
R
while/add_1Addwhile/Identitywhile/add_1/y*
T0*
_output_shapes
: 
k
while/strided_slice/stackPackwhile/Identity*
T0*

axis *
N*
_output_shapes
:
j
while/strided_slice/stack_1Packwhile/add_1*
T0*

axis *
N*
_output_shapes
:
v
while/strided_slice/stack_2Const^while/Identity*
dtype0*
_output_shapes
:*
valueB:
�
while/strided_sliceStridedSlicewhile/strided_slice/Enterwhile/strided_slice/stackwhile/strided_slice/stack_1while/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
while/strided_slice/EnterEnterranking/score*
parallel_iterations
*'
_output_shapes
:���������*#

frame_namewhile/while_context*
T0*
is_constant(
p
while/gradients/ShapeConst^while/Identity*
valueB:*
dtype0*
_output_shapes
:
o
while/gradients/grad_ys_0Const^while/Identity*
_output_shapes
: *
valueB
 *  �?*
dtype0
�
while/gradients/FillFillwhile/gradients/Shapewhile/gradients/grad_ys_0*
_output_shapes
:*
T0*

index_type0
�
.while/gradients/while/strided_slice_grad/ShapeShapewhile/strided_slice/Enter^while/Identity*
T0*
out_type0*
_output_shapes
:
�
9while/gradients/while/strided_slice_grad/StridedSliceGradStridedSliceGrad.while/gradients/while/strided_slice_grad/Shapewhile/strided_slice/stackwhile/strided_slice/stack_1while/strided_slice/stack_2while/gradients/Fill*
end_mask *'
_output_shapes
:���������*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
6while/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad9while/gradients/while/strided_slice_grad/StridedSliceGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
0while/gradients/ranking/dense/MatMul_grad/MatMulMatMul9while/gradients/while/strided_slice_grad/StridedSliceGrad6while/gradients/ranking/dense/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*'
_output_shapes
:���������*
transpose_a( 
�
6while/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

:*#

frame_namewhile/while_context
�
2while/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul8while/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter9while/gradients/while/strided_slice_grad/StridedSliceGrad*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
8while/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*'
_output_shapes
:���������*#

frame_namewhile/while_context*
T0*
is_constant(*
parallel_iterations

�
8while/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad0while/gradients/ranking/dense/MatMul_grad/MatMul8while/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
^while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad8while/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
Xwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulMatMul8while/gradients/ranking/dense_block_2/Relu_grad/ReluGrad^while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
^while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

: *#

frame_namewhile/while_context
�
Zwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1MatMul`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter8while/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_1/Relu*
is_constant(*
parallel_iterations
*'
_output_shapes
:��������� *#

frame_namewhile/while_context*
T0
�
8while/gradients/ranking/dense_block_1/Relu_grad/ReluGradReluGradXwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter*'
_output_shapes
:��������� *
T0
�
^while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGradBiasAddGrad8while/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
�
Xwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMulMatMul8while/gradients/ranking/dense_block_1/Relu_grad/ReluGrad^while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(*
T0
�
^while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-1/kernel/read*
is_constant(*
parallel_iterations
*
_output_shapes

:@ *#

frame_namewhile/while_context*
T0
�
Zwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1MatMul`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter8while/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
_output_shapes

:@ *
transpose_a(*
transpose_b( *
T0
�
`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/EnterEnterranking/dense_block/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������@*#

frame_namewhile/while_context
�
6while/gradients/ranking/dense_block/Relu_grad/ReluGradReluGradXwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������@
�
\while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd_grad/BiasAddGradBiasAddGrad6while/gradients/ranking/dense_block/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
�
Vwhile/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMulMatMul6while/gradients/ranking/dense_block/Relu_grad/ReluGrad\while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������<*
transpose_a( *
transpose_b(*
T0
�
\while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-0/kernel/read*
_output_shapes

:<@*#

frame_namewhile/while_context*
T0*
is_constant(*
parallel_iterations

�
Xwhile/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1MatMul^while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1/Enter6while/gradients/ranking/dense_block/Relu_grad/ReluGrad*
_output_shapes

:<@*
transpose_a(*
transpose_b( *
T0
�
^while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1/EnterEnterranking/feature*'
_output_shapes
:���������<*#

frame_namewhile/while_context*
T0*
is_constant(*
parallel_iterations

�
while/TensorArrayWrite/valuePackXwhile/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1*
T0*

axis *
N*"
_output_shapes
:<@
�
)while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3/while/TensorArrayWrite/TensorArrayWriteV3/Enterwhile/Identitywhile/TensorArrayWrite/valuewhile/Identity_1*
_output_shapes
: *
T0*/
_class%
#!loc:@while/TensorArrayWrite/value
�
/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray*
parallel_iterations
*
is_constant(*
_output_shapes
:*#

frame_namewhile/while_context*
T0*/
_class%
#!loc:@while/TensorArrayWrite/value
P
while/NextIterationNextIteration	while/add*
_output_shapes
: *
T0
r
while/NextIteration_1NextIteration)while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
A

while/ExitExitwhile/Switch*
T0*
_output_shapes
: 
E
while/Exit_1Exitwhile/Switch_1*
T0*
_output_shapes
: 
�
"TensorArrayStack/TensorArraySizeV3TensorArraySizeV3TensorArraywhile/Exit_1*
_class
loc:@TensorArray*
_output_shapes
: 
~
TensorArrayStack/range/startConst*
_class
loc:@TensorArray*
value	B : *
dtype0*
_output_shapes
: 
~
TensorArrayStack/range/deltaConst*
_class
loc:@TensorArray*
value	B :*
dtype0*
_output_shapes
: 
�
TensorArrayStack/rangeRangeTensorArrayStack/range/start"TensorArrayStack/TensorArraySizeV3TensorArrayStack/range/delta*

Tidx0*
_class
loc:@TensorArray*#
_output_shapes
:���������
�
$TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3TensorArrayTensorArrayStack/rangewhile/Exit_1*
_class
loc:@TensorArray*
dtype0*/
_output_shapes
:���������<@*
element_shape:<@
P
ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
�

ExpandDims
ExpandDims$TensorArrayStack/TensorArrayGatherV3ExpandDims/dim*3
_output_shapes!
:���������<@*

Tdim0*
T0
R
ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
�
ExpandDims_1
ExpandDims$TensorArrayStack/TensorArrayGatherV3ExpandDims_1/dim*3
_output_shapes!
:���������<@*

Tdim0*
T0
n
sub_11Sub
ExpandDimsExpandDims_1*
T0*<
_output_shapes*
(:&������������������<@
L
Shape_2Shapemul_7*
_output_shapes
:*
T0*
out_type0
F
RankConst*
value	B :*
dtype0*
_output_shapes
: 
H
Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
<
sub_12SubRankRank_1*
_output_shapes
: *
T0
P
ones_2/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_2/LessLesssub_12ones_2/Less/y*
_output_shapes
: *
T0
W
ones_2/packedPacksub_12*
T0*

axis *
N*
_output_shapes
:
N
ones_2/ConstConst*
dtype0*
_output_shapes
: *
value	B :
b
ones_2Fillones_2/packedones_2/Const*
_output_shapes
:*
T0*

index_type0
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
j
concatConcatV2Shape_2ones_2concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
x
	Reshape_1Reshapemul_7concat*
T0*
Tshape0*<
_output_shapes*
(:&������������������
f
mul_8Mul	Reshape_1sub_11*
T0*<
_output_shapes*
(:&������������������<@
g
Mean/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
u
MeanMeanmul_8Mean/reduction_indices*"
_output_shapes
:<@*
	keep_dims( *

Tidx0*
T0
X
Shape_3Const*
valueB"<   @   *
dtype0*
_output_shapes
:
Z
	Reshape_2ReshapeMeanShape_3*
T0*
Tshape0*
_output_shapes

:<@
I
Const_4Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArray_1TensorArrayV3ranking/batch_size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
�
while_1/EnterEnterConst_4*
_output_shapes
: *%

frame_namewhile_1/while_context*
T0*
is_constant( *
parallel_iterations

�
while_1/Enter_1EnterTensorArray_1:1*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_1/while_context*
T0*
is_constant( 
h
while_1/MergeMergewhile_1/Enterwhile_1/NextIteration*
T0*
N*
_output_shapes
: : 
n
while_1/Merge_1Mergewhile_1/Enter_1while_1/NextIteration_1*
T0*
N*
_output_shapes
: : 
X
while_1/LessLesswhile_1/Mergewhile_1/Less/Enter*
T0*
_output_shapes
: 
�
while_1/Less/EnterEnterranking/batch_size*
_output_shapes
: *%

frame_namewhile_1/while_context*
T0*
is_constant(*
parallel_iterations

B
while_1/LoopCondLoopCondwhile_1/Less*
_output_shapes
: 
~
while_1/SwitchSwitchwhile_1/Mergewhile_1/LoopCond*
T0* 
_class
loc:@while_1/Merge*
_output_shapes
: : 
�
while_1/Switch_1Switchwhile_1/Merge_1while_1/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@while_1/Merge_1
O
while_1/IdentityIdentitywhile_1/Switch:1*
_output_shapes
: *
T0
S
while_1/Identity_1Identitywhile_1/Switch_1:1*
T0*
_output_shapes
: 
b
while_1/add/yConst^while_1/Identity*
dtype0*
_output_shapes
: *
value	B :
T
while_1/addAddwhile_1/Identitywhile_1/add/y*
_output_shapes
: *
T0
d
while_1/add_1/yConst^while_1/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_1/add_1Addwhile_1/Identitywhile_1/add_1/y*
T0*
_output_shapes
: 
o
while_1/strided_slice/stackPackwhile_1/Identity*

axis *
N*
_output_shapes
:*
T0
n
while_1/strided_slice/stack_1Packwhile_1/add_1*
T0*

axis *
N*
_output_shapes
:
z
while_1/strided_slice/stack_2Const^while_1/Identity*
_output_shapes
:*
valueB:*
dtype0
�
while_1/strided_sliceStridedSlicewhile_1/strided_slice/Enterwhile_1/strided_slice/stackwhile_1/strided_slice/stack_1while_1/strided_slice/stack_2*
_output_shapes
:*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
while_1/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_1/while_context
t
while_1/gradients/ShapeConst^while_1/Identity*
dtype0*
_output_shapes
:*
valueB:
s
while_1/gradients/grad_ys_0Const^while_1/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_1/gradients/FillFillwhile_1/gradients/Shapewhile_1/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
:
�
2while_1/gradients/while_1/strided_slice_grad/ShapeShapewhile_1/strided_slice/Enter^while_1/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_1/gradients/while_1/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_1/gradients/while_1/strided_slice_grad/Shapewhile_1/strided_slice/stackwhile_1/strided_slice/stack_1while_1/strided_slice/stack_2while_1/gradients/Fill*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������*
Index0*
T0
�
8while_1/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_1/gradients/while_1/strided_slice_grad/StridedSliceGrad*
data_formatNHWC*
_output_shapes
:*
T0
�
2while_1/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_1/gradients/while_1/strided_slice_grad/StridedSliceGrad8while_1/gradients/ranking/dense/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
8while_1/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
_output_shapes

:*%

frame_namewhile_1/while_context*
T0*
is_constant(*
parallel_iterations

�
4while_1/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_1/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_1/gradients/while_1/strided_slice_grad/StridedSliceGrad*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
:while_1/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_1/while_context
�
:while_1/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad2while_1/gradients/ranking/dense/MatMul_grad/MatMul:while_1/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
`while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad:while_1/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
Zwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulMatMul:while_1/gradients/ranking/dense_block_2/Relu_grad/ReluGrad`while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(*
T0
�
`while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

: *%

frame_namewhile_1/while_context
�
\while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1MatMulbwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:while_1/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
transpose_b( *
T0*
_output_shapes

: *
transpose_a(
�
bwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_1/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:��������� *%

frame_namewhile_1/while_context
�
:while_1/gradients/ranking/dense_block_1/Relu_grad/ReluGradReluGradZwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulbwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:��������� 
�
`while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGradBiasAddGrad:while_1/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
_output_shapes
: *
T0*
data_formatNHWC
�
Zwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMulMatMul:while_1/gradients/ranking/dense_block_1/Relu_grad/ReluGrad`while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(
�
`while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-1/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

:@ *%

frame_namewhile_1/while_context
�
\while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1MatMulbwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:while_1/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
T0*
_output_shapes

:@ *
transpose_a(*
transpose_b( 
�
bwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/EnterEnterranking/dense_block/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������@*%

frame_namewhile_1/while_context
�
8while_1/gradients/ranking/dense_block/Relu_grad/ReluGradReluGradZwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMulbwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter*'
_output_shapes
:���������@*
T0
�
^while_1/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd_grad/BiasAddGradBiasAddGrad8while_1/gradients/ranking/dense_block/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
�
while_1/TensorArrayWrite/valuePack^while_1/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd_grad/BiasAddGrad*
T0*

axis *
N*
_output_shapes

:@
�
+while_1/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_1/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_1/Identitywhile_1/TensorArrayWrite/valuewhile_1/Identity_1*
T0*1
_class'
%#loc:@while_1/TensorArrayWrite/value*
_output_shapes
: 
�
1while_1/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_1*%

frame_namewhile_1/while_context*
_output_shapes
:*
T0*1
_class'
%#loc:@while_1/TensorArrayWrite/value*
parallel_iterations
*
is_constant(
T
while_1/NextIterationNextIterationwhile_1/add*
_output_shapes
: *
T0
v
while_1/NextIteration_1NextIteration+while_1/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
E
while_1/ExitExitwhile_1/Switch*
T0*
_output_shapes
: 
I
while_1/Exit_1Exitwhile_1/Switch_1*
_output_shapes
: *
T0
�
$TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3TensorArray_1while_1/Exit_1*
_output_shapes
: * 
_class
loc:@TensorArray_1
�
TensorArrayStack_1/range/startConst* 
_class
loc:@TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_1/range/deltaConst* 
_class
loc:@TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
�
TensorArrayStack_1/rangeRangeTensorArrayStack_1/range/start$TensorArrayStack_1/TensorArraySizeV3TensorArrayStack_1/range/delta* 
_class
loc:@TensorArray_1*#
_output_shapes
:���������*

Tidx0
�
&TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3TensorArray_1TensorArrayStack_1/rangewhile_1/Exit_1*
dtype0*+
_output_shapes
:���������@*
element_shape
:@* 
_class
loc:@TensorArray_1
R
ExpandDims_2/dimConst*
_output_shapes
: *
value	B :*
dtype0
�
ExpandDims_2
ExpandDims&TensorArrayStack_1/TensorArrayGatherV3ExpandDims_2/dim*
T0*/
_output_shapes
:���������@*

Tdim0
R
ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_3
ExpandDims&TensorArrayStack_1/TensorArrayGatherV3ExpandDims_3/dim*/
_output_shapes
:���������@*

Tdim0*
T0
l
sub_13SubExpandDims_2ExpandDims_3*8
_output_shapes&
$:"������������������@*
T0
L
Shape_4Shapemul_7*
T0*
out_type0*
_output_shapes
:
H
Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
H
Rank_3Const*
value	B :*
dtype0*
_output_shapes
: 
>
sub_14SubRank_2Rank_3*
_output_shapes
: *
T0
P
ones_3/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_3/LessLesssub_14ones_3/Less/y*
T0*
_output_shapes
: 
W
ones_3/packedPacksub_14*

axis *
N*
_output_shapes
:*
T0
N
ones_3/ConstConst*
dtype0*
_output_shapes
: *
value	B :
b
ones_3Fillones_3/packedones_3/Const*
T0*

index_type0*
_output_shapes
:
O
concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
n
concat_1ConcatV2Shape_4ones_3concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
v
	Reshape_3Reshapemul_7concat_1*
T0*
Tshape0*8
_output_shapes&
$:"������������������
b
mul_9Mul	Reshape_3sub_13*8
_output_shapes&
$:"������������������@*
T0
i
Mean_1/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
u
Mean_1Meanmul_9Mean_1/reduction_indices*
T0*
_output_shapes

:@*
	keep_dims( *

Tidx0
Q
Shape_5Const*
valueB:@*
dtype0*
_output_shapes
:
X
	Reshape_4ReshapeMean_1Shape_5*
T0*
Tshape0*
_output_shapes
:@
I
Const_5Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArray_2TensorArrayV3ranking/batch_size*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
�
while_2/EnterEnterConst_5*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_2/while_context
�
while_2/Enter_1EnterTensorArray_2:1*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_2/while_context*
T0*
is_constant( 
h
while_2/MergeMergewhile_2/Enterwhile_2/NextIteration*
T0*
N*
_output_shapes
: : 
n
while_2/Merge_1Mergewhile_2/Enter_1while_2/NextIteration_1*
T0*
N*
_output_shapes
: : 
X
while_2/LessLesswhile_2/Mergewhile_2/Less/Enter*
_output_shapes
: *
T0
�
while_2/Less/EnterEnterranking/batch_size*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_2/while_context*
T0*
is_constant(
B
while_2/LoopCondLoopCondwhile_2/Less*
_output_shapes
: 
~
while_2/SwitchSwitchwhile_2/Mergewhile_2/LoopCond*
T0* 
_class
loc:@while_2/Merge*
_output_shapes
: : 
�
while_2/Switch_1Switchwhile_2/Merge_1while_2/LoopCond*
T0*"
_class
loc:@while_2/Merge_1*
_output_shapes
: : 
O
while_2/IdentityIdentitywhile_2/Switch:1*
T0*
_output_shapes
: 
S
while_2/Identity_1Identitywhile_2/Switch_1:1*
_output_shapes
: *
T0
b
while_2/add/yConst^while_2/Identity*
value	B :*
dtype0*
_output_shapes
: 
T
while_2/addAddwhile_2/Identitywhile_2/add/y*
T0*
_output_shapes
: 
d
while_2/add_1/yConst^while_2/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_2/add_1Addwhile_2/Identitywhile_2/add_1/y*
_output_shapes
: *
T0
o
while_2/strided_slice/stackPackwhile_2/Identity*
N*
_output_shapes
:*
T0*

axis 
n
while_2/strided_slice/stack_1Packwhile_2/add_1*
T0*

axis *
N*
_output_shapes
:
z
while_2/strided_slice/stack_2Const^while_2/Identity*
valueB:*
dtype0*
_output_shapes
:
�
while_2/strided_sliceStridedSlicewhile_2/strided_slice/Enterwhile_2/strided_slice/stackwhile_2/strided_slice/stack_1while_2/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
�
while_2/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_2/while_context
t
while_2/gradients/ShapeConst^while_2/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_2/gradients/grad_ys_0Const^while_2/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_2/gradients/FillFillwhile_2/gradients/Shapewhile_2/gradients/grad_ys_0*
_output_shapes
:*
T0*

index_type0
�
2while_2/gradients/while_2/strided_slice_grad/ShapeShapewhile_2/strided_slice/Enter^while_2/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_2/gradients/while_2/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_2/gradients/while_2/strided_slice_grad/Shapewhile_2/strided_slice/stackwhile_2/strided_slice/stack_1while_2/strided_slice/stack_2while_2/gradients/Fill*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������*
Index0*
T0*
shrink_axis_mask
�
8while_2/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_2/gradients/while_2/strided_slice_grad/StridedSliceGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2while_2/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_2/gradients/while_2/strided_slice_grad/StridedSliceGrad8while_2/gradients/ranking/dense/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
8while_2/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

:*%

frame_namewhile_2/while_context
�
4while_2/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_2/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_2/gradients/while_2/strided_slice_grad/StridedSliceGrad*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
:while_2/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_2/while_context
�
:while_2/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad2while_2/gradients/ranking/dense/MatMul_grad/MatMul:while_2/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
`while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad:while_2/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
Zwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulMatMul:while_2/gradients/ranking/dense_block_2/Relu_grad/ReluGrad`while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
`while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

: *%

frame_namewhile_2/while_context
�
\while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1MatMulbwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:while_2/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
bwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_1/Relu*
is_constant(*
parallel_iterations
*'
_output_shapes
:��������� *%

frame_namewhile_2/while_context*
T0
�
:while_2/gradients/ranking/dense_block_1/Relu_grad/ReluGradReluGradZwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulbwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:��������� 
�
`while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGradBiasAddGrad:while_2/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0
�
Zwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMulMatMul:while_2/gradients/ranking/dense_block_1/Relu_grad/ReluGrad`while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������@*
transpose_a( *
transpose_b(*
T0
�
`while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-1/kernel/read*
is_constant(*
parallel_iterations
*
_output_shapes

:@ *%

frame_namewhile_2/while_context*
T0
�
\while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1MatMulbwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:while_2/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
_output_shapes

:@ *
transpose_a(*
transpose_b( *
T0
�
bwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/EnterEnterranking/dense_block/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������@*%

frame_namewhile_2/while_context
�
while_2/TensorArrayWrite/valuePack\while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1*
T0*

axis *
N*"
_output_shapes
:@ 
�
+while_2/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_2/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_2/Identitywhile_2/TensorArrayWrite/valuewhile_2/Identity_1*1
_class'
%#loc:@while_2/TensorArrayWrite/value*
_output_shapes
: *
T0
�
1while_2/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_2*
_output_shapes
:*%

frame_namewhile_2/while_context*
T0*1
_class'
%#loc:@while_2/TensorArrayWrite/value*
parallel_iterations
*
is_constant(
T
while_2/NextIterationNextIterationwhile_2/add*
_output_shapes
: *
T0
v
while_2/NextIteration_1NextIteration+while_2/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
E
while_2/ExitExitwhile_2/Switch*
_output_shapes
: *
T0
I
while_2/Exit_1Exitwhile_2/Switch_1*
T0*
_output_shapes
: 
�
$TensorArrayStack_2/TensorArraySizeV3TensorArraySizeV3TensorArray_2while_2/Exit_1* 
_class
loc:@TensorArray_2*
_output_shapes
: 
�
TensorArrayStack_2/range/startConst* 
_class
loc:@TensorArray_2*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_2/range/deltaConst* 
_class
loc:@TensorArray_2*
value	B :*
dtype0*
_output_shapes
: 
�
TensorArrayStack_2/rangeRangeTensorArrayStack_2/range/start$TensorArrayStack_2/TensorArraySizeV3TensorArrayStack_2/range/delta* 
_class
loc:@TensorArray_2*#
_output_shapes
:���������*

Tidx0
�
&TensorArrayStack_2/TensorArrayGatherV3TensorArrayGatherV3TensorArray_2TensorArrayStack_2/rangewhile_2/Exit_1* 
_class
loc:@TensorArray_2*
dtype0*/
_output_shapes
:���������@ *
element_shape:@ 
R
ExpandDims_4/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_4
ExpandDims&TensorArrayStack_2/TensorArrayGatherV3ExpandDims_4/dim*

Tdim0*
T0*3
_output_shapes!
:���������@ 
R
ExpandDims_5/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_5
ExpandDims&TensorArrayStack_2/TensorArrayGatherV3ExpandDims_5/dim*3
_output_shapes!
:���������@ *

Tdim0*
T0
p
sub_15SubExpandDims_4ExpandDims_5*
T0*<
_output_shapes*
(:&������������������@ 
L
Shape_6Shapemul_7*
out_type0*
_output_shapes
:*
T0
H
Rank_4Const*
value	B :*
dtype0*
_output_shapes
: 
H
Rank_5Const*
_output_shapes
: *
value	B :*
dtype0
>
sub_16SubRank_4Rank_5*
T0*
_output_shapes
: 
P
ones_4/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_4/LessLesssub_16ones_4/Less/y*
T0*
_output_shapes
: 
W
ones_4/packedPacksub_16*
T0*

axis *
N*
_output_shapes
:
N
ones_4/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
b
ones_4Fillones_4/packedones_4/Const*
T0*

index_type0*
_output_shapes
:
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
n
concat_2ConcatV2Shape_6ones_4concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
z
	Reshape_5Reshapemul_7concat_2*<
_output_shapes*
(:&������������������*
T0*
Tshape0
g
mul_10Mul	Reshape_5sub_15*<
_output_shapes*
(:&������������������@ *
T0
i
Mean_2/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
z
Mean_2Meanmul_10Mean_2/reduction_indices*"
_output_shapes
:@ *
	keep_dims( *

Tidx0*
T0
X
Shape_7Const*
valueB"@       *
dtype0*
_output_shapes
:
\
	Reshape_6ReshapeMean_2Shape_7*
T0*
Tshape0*
_output_shapes

:@ 
I
Const_6Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArray_3TensorArrayV3ranking/batch_size*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
�
while_3/EnterEnterConst_6*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_3/while_context*
T0
�
while_3/Enter_1EnterTensorArray_3:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_3/while_context
h
while_3/MergeMergewhile_3/Enterwhile_3/NextIteration*
T0*
N*
_output_shapes
: : 
n
while_3/Merge_1Mergewhile_3/Enter_1while_3/NextIteration_1*
T0*
N*
_output_shapes
: : 
X
while_3/LessLesswhile_3/Mergewhile_3/Less/Enter*
T0*
_output_shapes
: 
�
while_3/Less/EnterEnterranking/batch_size*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_3/while_context
B
while_3/LoopCondLoopCondwhile_3/Less*
_output_shapes
: 
~
while_3/SwitchSwitchwhile_3/Mergewhile_3/LoopCond* 
_class
loc:@while_3/Merge*
_output_shapes
: : *
T0
�
while_3/Switch_1Switchwhile_3/Merge_1while_3/LoopCond*
T0*"
_class
loc:@while_3/Merge_1*
_output_shapes
: : 
O
while_3/IdentityIdentitywhile_3/Switch:1*
T0*
_output_shapes
: 
S
while_3/Identity_1Identitywhile_3/Switch_1:1*
_output_shapes
: *
T0
b
while_3/add/yConst^while_3/Identity*
value	B :*
dtype0*
_output_shapes
: 
T
while_3/addAddwhile_3/Identitywhile_3/add/y*
T0*
_output_shapes
: 
d
while_3/add_1/yConst^while_3/Identity*
_output_shapes
: *
value	B :*
dtype0
X
while_3/add_1Addwhile_3/Identitywhile_3/add_1/y*
T0*
_output_shapes
: 
o
while_3/strided_slice/stackPackwhile_3/Identity*
T0*

axis *
N*
_output_shapes
:
n
while_3/strided_slice/stack_1Packwhile_3/add_1*
N*
_output_shapes
:*
T0*

axis 
z
while_3/strided_slice/stack_2Const^while_3/Identity*
valueB:*
dtype0*
_output_shapes
:
�
while_3/strided_sliceStridedSlicewhile_3/strided_slice/Enterwhile_3/strided_slice/stackwhile_3/strided_slice/stack_1while_3/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
while_3/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_3/while_context
t
while_3/gradients/ShapeConst^while_3/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_3/gradients/grad_ys_0Const^while_3/Identity*
dtype0*
_output_shapes
: *
valueB
 *  �?
�
while_3/gradients/FillFillwhile_3/gradients/Shapewhile_3/gradients/grad_ys_0*

index_type0*
_output_shapes
:*
T0
�
2while_3/gradients/while_3/strided_slice_grad/ShapeShapewhile_3/strided_slice/Enter^while_3/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_3/gradients/while_3/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_3/gradients/while_3/strided_slice_grad/Shapewhile_3/strided_slice/stackwhile_3/strided_slice/stack_1while_3/strided_slice/stack_2while_3/gradients/Fill*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������*
T0*
Index0
�
8while_3/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_3/gradients/while_3/strided_slice_grad/StridedSliceGrad*
data_formatNHWC*
_output_shapes
:*
T0
�
2while_3/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_3/gradients/while_3/strided_slice_grad/StridedSliceGrad8while_3/gradients/ranking/dense/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
8while_3/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
is_constant(*
parallel_iterations
*
_output_shapes

:*%

frame_namewhile_3/while_context*
T0
�
4while_3/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_3/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_3/gradients/while_3/strided_slice_grad/StridedSliceGrad*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
:while_3/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_3/while_context*
T0*
is_constant(
�
:while_3/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad2while_3/gradients/ranking/dense/MatMul_grad/MatMul:while_3/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
`while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad:while_3/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
Zwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulMatMul:while_3/gradients/ranking/dense_block_2/Relu_grad/ReluGrad`while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter*
T0*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(
�
`while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

: *%

frame_namewhile_3/while_context
�
\while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1MatMulbwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:while_3/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
bwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_1/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:��������� *%

frame_namewhile_3/while_context
�
:while_3/gradients/ranking/dense_block_1/Relu_grad/ReluGradReluGradZwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulbwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:��������� 
�
`while_3/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGradBiasAddGrad:while_3/gradients/ranking/dense_block_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
: *
T0
�
while_3/TensorArrayWrite/valuePack`while_3/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGrad*
T0*

axis *
N*
_output_shapes

: 
�
+while_3/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_3/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_3/Identitywhile_3/TensorArrayWrite/valuewhile_3/Identity_1*
T0*1
_class'
%#loc:@while_3/TensorArrayWrite/value*
_output_shapes
: 
�
1while_3/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_3*1
_class'
%#loc:@while_3/TensorArrayWrite/value*
parallel_iterations
*
is_constant(*
_output_shapes
:*%

frame_namewhile_3/while_context*
T0
T
while_3/NextIterationNextIterationwhile_3/add*
_output_shapes
: *
T0
v
while_3/NextIteration_1NextIteration+while_3/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
E
while_3/ExitExitwhile_3/Switch*
_output_shapes
: *
T0
I
while_3/Exit_1Exitwhile_3/Switch_1*
_output_shapes
: *
T0
�
$TensorArrayStack_3/TensorArraySizeV3TensorArraySizeV3TensorArray_3while_3/Exit_1* 
_class
loc:@TensorArray_3*
_output_shapes
: 
�
TensorArrayStack_3/range/startConst* 
_class
loc:@TensorArray_3*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_3/range/deltaConst*
_output_shapes
: * 
_class
loc:@TensorArray_3*
value	B :*
dtype0
�
TensorArrayStack_3/rangeRangeTensorArrayStack_3/range/start$TensorArrayStack_3/TensorArraySizeV3TensorArrayStack_3/range/delta*

Tidx0* 
_class
loc:@TensorArray_3*#
_output_shapes
:���������
�
&TensorArrayStack_3/TensorArrayGatherV3TensorArrayGatherV3TensorArray_3TensorArrayStack_3/rangewhile_3/Exit_1* 
_class
loc:@TensorArray_3*
dtype0*+
_output_shapes
:��������� *
element_shape
: 
R
ExpandDims_6/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_6
ExpandDims&TensorArrayStack_3/TensorArrayGatherV3ExpandDims_6/dim*/
_output_shapes
:��������� *

Tdim0*
T0
R
ExpandDims_7/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_7
ExpandDims&TensorArrayStack_3/TensorArrayGatherV3ExpandDims_7/dim*
T0*/
_output_shapes
:��������� *

Tdim0
l
sub_17SubExpandDims_6ExpandDims_7*8
_output_shapes&
$:"������������������ *
T0
L
Shape_8Shapemul_7*
_output_shapes
:*
T0*
out_type0
H
Rank_6Const*
_output_shapes
: *
value	B :*
dtype0
H
Rank_7Const*
value	B :*
dtype0*
_output_shapes
: 
>
sub_18SubRank_6Rank_7*
T0*
_output_shapes
: 
P
ones_5/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_5/LessLesssub_18ones_5/Less/y*
_output_shapes
: *
T0
W
ones_5/packedPacksub_18*

axis *
N*
_output_shapes
:*
T0
N
ones_5/ConstConst*
dtype0*
_output_shapes
: *
value	B :
b
ones_5Fillones_5/packedones_5/Const*
T0*

index_type0*
_output_shapes
:
O
concat_3/axisConst*
_output_shapes
: *
value	B : *
dtype0
n
concat_3ConcatV2Shape_8ones_5concat_3/axis*
T0*
N*
_output_shapes
:*

Tidx0
v
	Reshape_7Reshapemul_7concat_3*8
_output_shapes&
$:"������������������*
T0*
Tshape0
c
mul_11Mul	Reshape_7sub_17*
T0*8
_output_shapes&
$:"������������������ 
i
Mean_3/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
v
Mean_3Meanmul_11Mean_3/reduction_indices*
T0*
_output_shapes

: *
	keep_dims( *

Tidx0
Q
Shape_9Const*
valueB: *
dtype0*
_output_shapes
:
X
	Reshape_8ReshapeMean_3Shape_9*
_output_shapes
: *
T0*
Tshape0
I
Const_7Const*
dtype0*
_output_shapes
: *
value	B : 
�
TensorArray_4TensorArrayV3ranking/batch_size*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
dynamic_size( *
clear_after_read(
�
while_4/EnterEnterConst_7*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_4/while_context
�
while_4/Enter_1EnterTensorArray_4:1*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_4/while_context*
T0
h
while_4/MergeMergewhile_4/Enterwhile_4/NextIteration*
N*
_output_shapes
: : *
T0
n
while_4/Merge_1Mergewhile_4/Enter_1while_4/NextIteration_1*
N*
_output_shapes
: : *
T0
X
while_4/LessLesswhile_4/Mergewhile_4/Less/Enter*
_output_shapes
: *
T0
�
while_4/Less/EnterEnterranking/batch_size*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_4/while_context
B
while_4/LoopCondLoopCondwhile_4/Less*
_output_shapes
: 
~
while_4/SwitchSwitchwhile_4/Mergewhile_4/LoopCond* 
_class
loc:@while_4/Merge*
_output_shapes
: : *
T0
�
while_4/Switch_1Switchwhile_4/Merge_1while_4/LoopCond*
T0*"
_class
loc:@while_4/Merge_1*
_output_shapes
: : 
O
while_4/IdentityIdentitywhile_4/Switch:1*
T0*
_output_shapes
: 
S
while_4/Identity_1Identitywhile_4/Switch_1:1*
T0*
_output_shapes
: 
b
while_4/add/yConst^while_4/Identity*
value	B :*
dtype0*
_output_shapes
: 
T
while_4/addAddwhile_4/Identitywhile_4/add/y*
_output_shapes
: *
T0
d
while_4/add_1/yConst^while_4/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_4/add_1Addwhile_4/Identitywhile_4/add_1/y*
_output_shapes
: *
T0
o
while_4/strided_slice/stackPackwhile_4/Identity*

axis *
N*
_output_shapes
:*
T0
n
while_4/strided_slice/stack_1Packwhile_4/add_1*
T0*

axis *
N*
_output_shapes
:
z
while_4/strided_slice/stack_2Const^while_4/Identity*
dtype0*
_output_shapes
:*
valueB:
�
while_4/strided_sliceStridedSlicewhile_4/strided_slice/Enterwhile_4/strided_slice/stackwhile_4/strided_slice/stack_1while_4/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0
�
while_4/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_4/while_context
t
while_4/gradients/ShapeConst^while_4/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_4/gradients/grad_ys_0Const^while_4/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_4/gradients/FillFillwhile_4/gradients/Shapewhile_4/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
:
�
2while_4/gradients/while_4/strided_slice_grad/ShapeShapewhile_4/strided_slice/Enter^while_4/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_4/gradients/while_4/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_4/gradients/while_4/strided_slice_grad/Shapewhile_4/strided_slice/stackwhile_4/strided_slice/stack_1while_4/strided_slice/stack_2while_4/gradients/Fill*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������
�
8while_4/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_4/gradients/while_4/strided_slice_grad/StridedSliceGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2while_4/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_4/gradients/while_4/strided_slice_grad/StridedSliceGrad8while_4/gradients/ranking/dense/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
8while_4/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

:*%

frame_namewhile_4/while_context
�
4while_4/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_4/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_4/gradients/while_4/strided_slice_grad/StridedSliceGrad*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
:while_4/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_4/while_context
�
:while_4/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad2while_4/gradients/ranking/dense/MatMul_grad/MatMul:while_4/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
`while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad:while_4/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
Zwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMulMatMul:while_4/gradients/ranking/dense_block_2/Relu_grad/ReluGrad`while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter*'
_output_shapes
:��������� *
transpose_a( *
transpose_b(*
T0
�
`while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/EnterEnter7dense_block/dense_block-dense_block_mode1-2/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes

: *%

frame_namewhile_4/while_context
�
\while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1MatMulbwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:while_4/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
�
bwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_1/Relu*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:��������� *%

frame_namewhile_4/while_context
�
while_4/TensorArrayWrite/valuePack\while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1*
T0*

axis *
N*"
_output_shapes
: 
�
+while_4/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_4/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_4/Identitywhile_4/TensorArrayWrite/valuewhile_4/Identity_1*
T0*1
_class'
%#loc:@while_4/TensorArrayWrite/value*
_output_shapes
: 
�
1while_4/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_4*
is_constant(*%

frame_namewhile_4/while_context*
_output_shapes
:*
T0*1
_class'
%#loc:@while_4/TensorArrayWrite/value*
parallel_iterations

T
while_4/NextIterationNextIterationwhile_4/add*
_output_shapes
: *
T0
v
while_4/NextIteration_1NextIteration+while_4/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
E
while_4/ExitExitwhile_4/Switch*
T0*
_output_shapes
: 
I
while_4/Exit_1Exitwhile_4/Switch_1*
_output_shapes
: *
T0
�
$TensorArrayStack_4/TensorArraySizeV3TensorArraySizeV3TensorArray_4while_4/Exit_1*
_output_shapes
: * 
_class
loc:@TensorArray_4
�
TensorArrayStack_4/range/startConst* 
_class
loc:@TensorArray_4*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_4/range/deltaConst* 
_class
loc:@TensorArray_4*
value	B :*
dtype0*
_output_shapes
: 
�
TensorArrayStack_4/rangeRangeTensorArrayStack_4/range/start$TensorArrayStack_4/TensorArraySizeV3TensorArrayStack_4/range/delta* 
_class
loc:@TensorArray_4*#
_output_shapes
:���������*

Tidx0
�
&TensorArrayStack_4/TensorArrayGatherV3TensorArrayGatherV3TensorArray_4TensorArrayStack_4/rangewhile_4/Exit_1* 
_class
loc:@TensorArray_4*
dtype0*/
_output_shapes
:��������� *
element_shape: 
R
ExpandDims_8/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_8
ExpandDims&TensorArrayStack_4/TensorArrayGatherV3ExpandDims_8/dim*3
_output_shapes!
:��������� *

Tdim0*
T0
R
ExpandDims_9/dimConst*
dtype0*
_output_shapes
: *
value	B : 
�
ExpandDims_9
ExpandDims&TensorArrayStack_4/TensorArrayGatherV3ExpandDims_9/dim*

Tdim0*
T0*3
_output_shapes!
:��������� 
p
sub_19SubExpandDims_8ExpandDims_9*
T0*<
_output_shapes*
(:&������������������ 
M
Shape_10Shapemul_7*
T0*
out_type0*
_output_shapes
:
H
Rank_8Const*
_output_shapes
: *
value	B :*
dtype0
H
Rank_9Const*
value	B :*
dtype0*
_output_shapes
: 
>
sub_20SubRank_8Rank_9*
_output_shapes
: *
T0
P
ones_6/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_6/LessLesssub_20ones_6/Less/y*
_output_shapes
: *
T0
W
ones_6/packedPacksub_20*
T0*

axis *
N*
_output_shapes
:
N
ones_6/ConstConst*
_output_shapes
: *
value	B :*
dtype0
b
ones_6Fillones_6/packedones_6/Const*
T0*

index_type0*
_output_shapes
:
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
o
concat_4ConcatV2Shape_10ones_6concat_4/axis*
T0*
N*
_output_shapes
:*

Tidx0
z
	Reshape_9Reshapemul_7concat_4*
T0*
Tshape0*<
_output_shapes*
(:&������������������
g
mul_12Mul	Reshape_9sub_19*
T0*<
_output_shapes*
(:&������������������ 
i
Mean_4/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
z
Mean_4Meanmul_12Mean_4/reduction_indices*
T0*"
_output_shapes
: *
	keep_dims( *

Tidx0
Y
Shape_11Const*
valueB"       *
dtype0*
_output_shapes
:
^

Reshape_10ReshapeMean_4Shape_11*
_output_shapes

: *
T0*
Tshape0
I
Const_8Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArray_5TensorArrayV3ranking/batch_size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
�
while_5/EnterEnterConst_8*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_5/while_context
�
while_5/Enter_1EnterTensorArray_5:1*
_output_shapes
: *%

frame_namewhile_5/while_context*
T0*
is_constant( *
parallel_iterations

h
while_5/MergeMergewhile_5/Enterwhile_5/NextIteration*
T0*
N*
_output_shapes
: : 
n
while_5/Merge_1Mergewhile_5/Enter_1while_5/NextIteration_1*
T0*
N*
_output_shapes
: : 
X
while_5/LessLesswhile_5/Mergewhile_5/Less/Enter*
T0*
_output_shapes
: 
�
while_5/Less/EnterEnterranking/batch_size*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_5/while_context
B
while_5/LoopCondLoopCondwhile_5/Less*
_output_shapes
: 
~
while_5/SwitchSwitchwhile_5/Mergewhile_5/LoopCond*
_output_shapes
: : *
T0* 
_class
loc:@while_5/Merge
�
while_5/Switch_1Switchwhile_5/Merge_1while_5/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@while_5/Merge_1
O
while_5/IdentityIdentitywhile_5/Switch:1*
_output_shapes
: *
T0
S
while_5/Identity_1Identitywhile_5/Switch_1:1*
T0*
_output_shapes
: 
b
while_5/add/yConst^while_5/Identity*
value	B :*
dtype0*
_output_shapes
: 
T
while_5/addAddwhile_5/Identitywhile_5/add/y*
T0*
_output_shapes
: 
d
while_5/add_1/yConst^while_5/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_5/add_1Addwhile_5/Identitywhile_5/add_1/y*
_output_shapes
: *
T0
o
while_5/strided_slice/stackPackwhile_5/Identity*
T0*

axis *
N*
_output_shapes
:
n
while_5/strided_slice/stack_1Packwhile_5/add_1*
N*
_output_shapes
:*
T0*

axis 
z
while_5/strided_slice/stack_2Const^while_5/Identity*
valueB:*
dtype0*
_output_shapes
:
�
while_5/strided_sliceStridedSlicewhile_5/strided_slice/Enterwhile_5/strided_slice/stackwhile_5/strided_slice/stack_1while_5/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0
�
while_5/strided_slice/EnterEnterranking/score*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_5/while_context*
T0*
is_constant(
t
while_5/gradients/ShapeConst^while_5/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_5/gradients/grad_ys_0Const^while_5/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_5/gradients/FillFillwhile_5/gradients/Shapewhile_5/gradients/grad_ys_0*

index_type0*
_output_shapes
:*
T0
�
2while_5/gradients/while_5/strided_slice_grad/ShapeShapewhile_5/strided_slice/Enter^while_5/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_5/gradients/while_5/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_5/gradients/while_5/strided_slice_grad/Shapewhile_5/strided_slice/stackwhile_5/strided_slice/stack_1while_5/strided_slice/stack_2while_5/gradients/Fill*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������
�
8while_5/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_5/gradients/while_5/strided_slice_grad/StridedSliceGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2while_5/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_5/gradients/while_5/strided_slice_grad/StridedSliceGrad8while_5/gradients/ranking/dense/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
8while_5/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
parallel_iterations
*
_output_shapes

:*%

frame_namewhile_5/while_context*
T0*
is_constant(
�
4while_5/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_5/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_5/gradients/while_5/strided_slice_grad/StridedSliceGrad*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
:while_5/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_5/while_context*
T0
�
:while_5/gradients/ranking/dense_block_2/Relu_grad/ReluGradReluGrad2while_5/gradients/ranking/dense/MatMul_grad/MatMul:while_5/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter*
T0*'
_output_shapes
:���������
�
`while_5/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGradBiasAddGrad:while_5/gradients/ranking/dense_block_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
while_5/TensorArrayWrite/valuePack`while_5/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad*
T0*

axis *
N*
_output_shapes

:
�
+while_5/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_5/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_5/Identitywhile_5/TensorArrayWrite/valuewhile_5/Identity_1*
_output_shapes
: *
T0*1
_class'
%#loc:@while_5/TensorArrayWrite/value
�
1while_5/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_5*
is_constant(*
_output_shapes
:*%

frame_namewhile_5/while_context*
T0*1
_class'
%#loc:@while_5/TensorArrayWrite/value*
parallel_iterations

T
while_5/NextIterationNextIterationwhile_5/add*
_output_shapes
: *
T0
v
while_5/NextIteration_1NextIteration+while_5/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
E
while_5/ExitExitwhile_5/Switch*
T0*
_output_shapes
: 
I
while_5/Exit_1Exitwhile_5/Switch_1*
_output_shapes
: *
T0
�
$TensorArrayStack_5/TensorArraySizeV3TensorArraySizeV3TensorArray_5while_5/Exit_1* 
_class
loc:@TensorArray_5*
_output_shapes
: 
�
TensorArrayStack_5/range/startConst*
dtype0*
_output_shapes
: * 
_class
loc:@TensorArray_5*
value	B : 
�
TensorArrayStack_5/range/deltaConst*
_output_shapes
: * 
_class
loc:@TensorArray_5*
value	B :*
dtype0
�
TensorArrayStack_5/rangeRangeTensorArrayStack_5/range/start$TensorArrayStack_5/TensorArraySizeV3TensorArrayStack_5/range/delta*#
_output_shapes
:���������*

Tidx0* 
_class
loc:@TensorArray_5
�
&TensorArrayStack_5/TensorArrayGatherV3TensorArrayGatherV3TensorArray_5TensorArrayStack_5/rangewhile_5/Exit_1* 
_class
loc:@TensorArray_5*
dtype0*+
_output_shapes
:���������*
element_shape
:
S
ExpandDims_10/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_10
ExpandDims&TensorArrayStack_5/TensorArrayGatherV3ExpandDims_10/dim*/
_output_shapes
:���������*

Tdim0*
T0
S
ExpandDims_11/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_11
ExpandDims&TensorArrayStack_5/TensorArrayGatherV3ExpandDims_11/dim*/
_output_shapes
:���������*

Tdim0*
T0
n
sub_21SubExpandDims_10ExpandDims_11*
T0*8
_output_shapes&
$:"������������������
M
Shape_12Shapemul_7*
_output_shapes
:*
T0*
out_type0
I
Rank_10Const*
dtype0*
_output_shapes
: *
value	B :
I
Rank_11Const*
value	B :*
dtype0*
_output_shapes
: 
@
sub_22SubRank_10Rank_11*
T0*
_output_shapes
: 
P
ones_7/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_7/LessLesssub_22ones_7/Less/y*
T0*
_output_shapes
: 
W
ones_7/packedPacksub_22*
_output_shapes
:*
T0*

axis *
N
N
ones_7/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
b
ones_7Fillones_7/packedones_7/Const*

index_type0*
_output_shapes
:*
T0
O
concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
o
concat_5ConcatV2Shape_12ones_7concat_5/axis*
N*
_output_shapes
:*

Tidx0*
T0
w

Reshape_11Reshapemul_7concat_5*
T0*
Tshape0*8
_output_shapes&
$:"������������������
d
mul_13Mul
Reshape_11sub_21*8
_output_shapes&
$:"������������������*
T0
i
Mean_5/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
v
Mean_5Meanmul_13Mean_5/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:
R
Shape_13Const*
valueB:*
dtype0*
_output_shapes
:
Z

Reshape_12ReshapeMean_5Shape_13*
T0*
Tshape0*
_output_shapes
:
I
Const_9Const*
_output_shapes
: *
value	B : *
dtype0
�
TensorArray_6TensorArrayV3ranking/batch_size*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:
�
while_6/EnterEnterConst_9*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_6/while_context
�
while_6/Enter_1EnterTensorArray_6:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_6/while_context
h
while_6/MergeMergewhile_6/Enterwhile_6/NextIteration*
_output_shapes
: : *
T0*
N
n
while_6/Merge_1Mergewhile_6/Enter_1while_6/NextIteration_1*
N*
_output_shapes
: : *
T0
X
while_6/LessLesswhile_6/Mergewhile_6/Less/Enter*
_output_shapes
: *
T0
�
while_6/Less/EnterEnterranking/batch_size*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_6/while_context
B
while_6/LoopCondLoopCondwhile_6/Less*
_output_shapes
: 
~
while_6/SwitchSwitchwhile_6/Mergewhile_6/LoopCond*
_output_shapes
: : *
T0* 
_class
loc:@while_6/Merge
�
while_6/Switch_1Switchwhile_6/Merge_1while_6/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@while_6/Merge_1
O
while_6/IdentityIdentitywhile_6/Switch:1*
T0*
_output_shapes
: 
S
while_6/Identity_1Identitywhile_6/Switch_1:1*
T0*
_output_shapes
: 
b
while_6/add/yConst^while_6/Identity*
value	B :*
dtype0*
_output_shapes
: 
T
while_6/addAddwhile_6/Identitywhile_6/add/y*
T0*
_output_shapes
: 
d
while_6/add_1/yConst^while_6/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_6/add_1Addwhile_6/Identitywhile_6/add_1/y*
T0*
_output_shapes
: 
o
while_6/strided_slice/stackPackwhile_6/Identity*
T0*

axis *
N*
_output_shapes
:
n
while_6/strided_slice/stack_1Packwhile_6/add_1*
T0*

axis *
N*
_output_shapes
:
z
while_6/strided_slice/stack_2Const^while_6/Identity*
dtype0*
_output_shapes
:*
valueB:
�
while_6/strided_sliceStridedSlicewhile_6/strided_slice/Enterwhile_6/strided_slice/stackwhile_6/strided_slice/stack_1while_6/strided_slice/stack_2*
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
while_6/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_6/while_context
t
while_6/gradients/ShapeConst^while_6/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_6/gradients/grad_ys_0Const^while_6/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_6/gradients/FillFillwhile_6/gradients/Shapewhile_6/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
:
�
2while_6/gradients/while_6/strided_slice_grad/ShapeShapewhile_6/strided_slice/Enter^while_6/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_6/gradients/while_6/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_6/gradients/while_6/strided_slice_grad/Shapewhile_6/strided_slice/stackwhile_6/strided_slice/stack_1while_6/strided_slice/stack_2while_6/gradients/Fill*'
_output_shapes
:���������*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
8while_6/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_6/gradients/while_6/strided_slice_grad/StridedSliceGrad*
_output_shapes
:*
T0*
data_formatNHWC
�
2while_6/gradients/ranking/dense/MatMul_grad/MatMulMatMul=while_6/gradients/while_6/strided_slice_grad/StridedSliceGrad8while_6/gradients/ranking/dense/MatMul_grad/MatMul/Enter*'
_output_shapes
:���������*
transpose_a( *
transpose_b(*
T0
�
8while_6/gradients/ranking/dense/MatMul_grad/MatMul/EnterEnterdense/kernel/read*
_output_shapes

:*%

frame_namewhile_6/while_context*
T0*
is_constant(*
parallel_iterations

�
4while_6/gradients/ranking/dense/MatMul_grad/MatMul_1MatMul:while_6/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter=while_6/gradients/while_6/strided_slice_grad/StridedSliceGrad*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
:while_6/gradients/ranking/dense/MatMul_grad/MatMul_1/EnterEnterranking/dense_block_2/Relu*'
_output_shapes
:���������*%

frame_namewhile_6/while_context*
T0*
is_constant(*
parallel_iterations

�
while_6/TensorArrayWrite/valuePack4while_6/gradients/ranking/dense/MatMul_grad/MatMul_1*
N*"
_output_shapes
:*
T0*

axis 
�
+while_6/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_6/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_6/Identitywhile_6/TensorArrayWrite/valuewhile_6/Identity_1*1
_class'
%#loc:@while_6/TensorArrayWrite/value*
_output_shapes
: *
T0
�
1while_6/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_6*
parallel_iterations
*
is_constant(*
_output_shapes
:*%

frame_namewhile_6/while_context*
T0*1
_class'
%#loc:@while_6/TensorArrayWrite/value
T
while_6/NextIterationNextIterationwhile_6/add*
T0*
_output_shapes
: 
v
while_6/NextIteration_1NextIteration+while_6/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
E
while_6/ExitExitwhile_6/Switch*
_output_shapes
: *
T0
I
while_6/Exit_1Exitwhile_6/Switch_1*
_output_shapes
: *
T0
�
$TensorArrayStack_6/TensorArraySizeV3TensorArraySizeV3TensorArray_6while_6/Exit_1*
_output_shapes
: * 
_class
loc:@TensorArray_6
�
TensorArrayStack_6/range/startConst* 
_class
loc:@TensorArray_6*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_6/range/deltaConst*
dtype0*
_output_shapes
: * 
_class
loc:@TensorArray_6*
value	B :
�
TensorArrayStack_6/rangeRangeTensorArrayStack_6/range/start$TensorArrayStack_6/TensorArraySizeV3TensorArrayStack_6/range/delta* 
_class
loc:@TensorArray_6*#
_output_shapes
:���������*

Tidx0
�
&TensorArrayStack_6/TensorArrayGatherV3TensorArrayGatherV3TensorArray_6TensorArrayStack_6/rangewhile_6/Exit_1* 
_class
loc:@TensorArray_6*
dtype0*/
_output_shapes
:���������*
element_shape:
S
ExpandDims_12/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_12
ExpandDims&TensorArrayStack_6/TensorArrayGatherV3ExpandDims_12/dim*3
_output_shapes!
:���������*

Tdim0*
T0
S
ExpandDims_13/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_13
ExpandDims&TensorArrayStack_6/TensorArrayGatherV3ExpandDims_13/dim*

Tdim0*
T0*3
_output_shapes!
:���������
r
sub_23SubExpandDims_12ExpandDims_13*<
_output_shapes*
(:&������������������*
T0
M
Shape_14Shapemul_7*
_output_shapes
:*
T0*
out_type0
I
Rank_12Const*
value	B :*
dtype0*
_output_shapes
: 
I
Rank_13Const*
value	B :*
dtype0*
_output_shapes
: 
@
sub_24SubRank_12Rank_13*
_output_shapes
: *
T0
P
ones_8/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_8/LessLesssub_24ones_8/Less/y*
T0*
_output_shapes
: 
W
ones_8/packedPacksub_24*
T0*

axis *
N*
_output_shapes
:
N
ones_8/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
b
ones_8Fillones_8/packedones_8/Const*
T0*

index_type0*
_output_shapes
:
O
concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
o
concat_6ConcatV2Shape_14ones_8concat_6/axis*

Tidx0*
T0*
N*
_output_shapes
:
{

Reshape_13Reshapemul_7concat_6*<
_output_shapes*
(:&������������������*
T0*
Tshape0
h
mul_14Mul
Reshape_13sub_23*<
_output_shapes*
(:&������������������*
T0
i
Mean_6/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
z
Mean_6Meanmul_14Mean_6/reduction_indices*
T0*"
_output_shapes
:*
	keep_dims( *

Tidx0
Y
Shape_15Const*
valueB"      *
dtype0*
_output_shapes
:
^

Reshape_14ReshapeMean_6Shape_15*
T0*
Tshape0*
_output_shapes

:
J
Const_10Const*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArray_7TensorArrayV3ranking/batch_size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
�
while_7/EnterEnterConst_10*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_7/while_context
�
while_7/Enter_1EnterTensorArray_7:1*
parallel_iterations
*
_output_shapes
: *%

frame_namewhile_7/while_context*
T0*
is_constant( 
h
while_7/MergeMergewhile_7/Enterwhile_7/NextIteration*
T0*
N*
_output_shapes
: : 
n
while_7/Merge_1Mergewhile_7/Enter_1while_7/NextIteration_1*
N*
_output_shapes
: : *
T0
X
while_7/LessLesswhile_7/Mergewhile_7/Less/Enter*
_output_shapes
: *
T0
�
while_7/Less/EnterEnterranking/batch_size*
_output_shapes
: *%

frame_namewhile_7/while_context*
T0*
is_constant(*
parallel_iterations

B
while_7/LoopCondLoopCondwhile_7/Less*
_output_shapes
: 
~
while_7/SwitchSwitchwhile_7/Mergewhile_7/LoopCond*
T0* 
_class
loc:@while_7/Merge*
_output_shapes
: : 
�
while_7/Switch_1Switchwhile_7/Merge_1while_7/LoopCond*
T0*"
_class
loc:@while_7/Merge_1*
_output_shapes
: : 
O
while_7/IdentityIdentitywhile_7/Switch:1*
_output_shapes
: *
T0
S
while_7/Identity_1Identitywhile_7/Switch_1:1*
_output_shapes
: *
T0
b
while_7/add/yConst^while_7/Identity*
dtype0*
_output_shapes
: *
value	B :
T
while_7/addAddwhile_7/Identitywhile_7/add/y*
T0*
_output_shapes
: 
d
while_7/add_1/yConst^while_7/Identity*
value	B :*
dtype0*
_output_shapes
: 
X
while_7/add_1Addwhile_7/Identitywhile_7/add_1/y*
T0*
_output_shapes
: 
o
while_7/strided_slice/stackPackwhile_7/Identity*
T0*

axis *
N*
_output_shapes
:
n
while_7/strided_slice/stack_1Packwhile_7/add_1*
T0*

axis *
N*
_output_shapes
:
z
while_7/strided_slice/stack_2Const^while_7/Identity*
valueB:*
dtype0*
_output_shapes
:
�
while_7/strided_sliceStridedSlicewhile_7/strided_slice/Enterwhile_7/strided_slice/stackwhile_7/strided_slice/stack_1while_7/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
while_7/strided_slice/EnterEnterranking/score*
T0*
is_constant(*
parallel_iterations
*'
_output_shapes
:���������*%

frame_namewhile_7/while_context
t
while_7/gradients/ShapeConst^while_7/Identity*
valueB:*
dtype0*
_output_shapes
:
s
while_7/gradients/grad_ys_0Const^while_7/Identity*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
while_7/gradients/FillFillwhile_7/gradients/Shapewhile_7/gradients/grad_ys_0*
_output_shapes
:*
T0*

index_type0
�
2while_7/gradients/while_7/strided_slice_grad/ShapeShapewhile_7/strided_slice/Enter^while_7/Identity*
T0*
out_type0*
_output_shapes
:
�
=while_7/gradients/while_7/strided_slice_grad/StridedSliceGradStridedSliceGrad2while_7/gradients/while_7/strided_slice_grad/Shapewhile_7/strided_slice/stackwhile_7/strided_slice/stack_1while_7/strided_slice/stack_2while_7/gradients/Fill*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:���������
�
8while_7/gradients/ranking/dense/BiasAdd_grad/BiasAddGradBiasAddGrad=while_7/gradients/while_7/strided_slice_grad/StridedSliceGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
while_7/TensorArrayWrite/valuePack8while_7/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad*
T0*

axis *
N*
_output_shapes

:
�
+while_7/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV31while_7/TensorArrayWrite/TensorArrayWriteV3/Enterwhile_7/Identitywhile_7/TensorArrayWrite/valuewhile_7/Identity_1*
T0*1
_class'
%#loc:@while_7/TensorArrayWrite/value*
_output_shapes
: 
�
1while_7/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_7*
is_constant(*
_output_shapes
:*%

frame_namewhile_7/while_context*
T0*1
_class'
%#loc:@while_7/TensorArrayWrite/value*
parallel_iterations

T
while_7/NextIterationNextIterationwhile_7/add*
_output_shapes
: *
T0
v
while_7/NextIteration_1NextIteration+while_7/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
E
while_7/ExitExitwhile_7/Switch*
_output_shapes
: *
T0
I
while_7/Exit_1Exitwhile_7/Switch_1*
T0*
_output_shapes
: 
�
$TensorArrayStack_7/TensorArraySizeV3TensorArraySizeV3TensorArray_7while_7/Exit_1*
_output_shapes
: * 
_class
loc:@TensorArray_7
�
TensorArrayStack_7/range/startConst* 
_class
loc:@TensorArray_7*
value	B : *
dtype0*
_output_shapes
: 
�
TensorArrayStack_7/range/deltaConst* 
_class
loc:@TensorArray_7*
value	B :*
dtype0*
_output_shapes
: 
�
TensorArrayStack_7/rangeRangeTensorArrayStack_7/range/start$TensorArrayStack_7/TensorArraySizeV3TensorArrayStack_7/range/delta*

Tidx0* 
_class
loc:@TensorArray_7*#
_output_shapes
:���������
�
&TensorArrayStack_7/TensorArrayGatherV3TensorArrayGatherV3TensorArray_7TensorArrayStack_7/rangewhile_7/Exit_1* 
_class
loc:@TensorArray_7*
dtype0*+
_output_shapes
:���������*
element_shape
:
S
ExpandDims_14/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
ExpandDims_14
ExpandDims&TensorArrayStack_7/TensorArrayGatherV3ExpandDims_14/dim*

Tdim0*
T0*/
_output_shapes
:���������
S
ExpandDims_15/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
ExpandDims_15
ExpandDims&TensorArrayStack_7/TensorArrayGatherV3ExpandDims_15/dim*/
_output_shapes
:���������*

Tdim0*
T0
n
sub_25SubExpandDims_14ExpandDims_15*
T0*8
_output_shapes&
$:"������������������
M
Shape_16Shapemul_7*
_output_shapes
:*
T0*
out_type0
I
Rank_14Const*
value	B :*
dtype0*
_output_shapes
: 
I
Rank_15Const*
value	B :*
dtype0*
_output_shapes
: 
@
sub_26SubRank_14Rank_15*
T0*
_output_shapes
: 
P
ones_9/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
K
ones_9/LessLesssub_26ones_9/Less/y*
T0*
_output_shapes
: 
W
ones_9/packedPacksub_26*
T0*

axis *
N*
_output_shapes
:
N
ones_9/ConstConst*
_output_shapes
: *
value	B :*
dtype0
b
ones_9Fillones_9/packedones_9/Const*
T0*

index_type0*
_output_shapes
:
O
concat_7/axisConst*
value	B : *
dtype0*
_output_shapes
: 
o
concat_7ConcatV2Shape_16ones_9concat_7/axis*
N*
_output_shapes
:*

Tidx0*
T0
w

Reshape_15Reshapemul_7concat_7*
T0*
Tshape0*8
_output_shapes&
$:"������������������
d
mul_15Mul
Reshape_15sub_25*
T0*8
_output_shapes&
$:"������������������
i
Mean_7/reduction_indicesConst*
valueB"       *
dtype0*
_output_shapes
:
v
Mean_7Meanmul_15Mean_7/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
R
Shape_17Const*
valueB:*
dtype0*
_output_shapes
:
Z

Reshape_16ReshapeMean_7Shape_17*
T0*
Tshape0*
_output_shapes
:
�
&optimization/beta1_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
optimization/beta1_power
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
optimization/beta1_power/AssignAssignoptimization/beta1_power&optimization/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
�
optimization/beta1_power/readIdentityoptimization/beta1_power*
_output_shapes
: *
T0*
_class
loc:@dense/bias
�
&optimization/beta2_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
optimization/beta2_power
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
optimization/beta2_power/AssignAssignoptimization/beta2_power&optimization/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
�
optimization/beta2_power/readIdentityoptimization/beta2_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
�
Ydense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB"<   @   *
dtype0*
_output_shapes
:
�
Odense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB
 *    
�
Idense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zerosFillYdense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros/shape_as_tensorOdense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros/Const*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*

index_type0*
_output_shapes

:<@
�
7dense_block/dense_block-dense_block_mode1-0/kernel/Adam
VariableV2*
	container *
shape
:<@*
dtype0*
_output_shapes

:<@*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel
�
>dense_block/dense_block-dense_block_mode1-0/kernel/Adam/AssignAssign7dense_block/dense_block-dense_block_mode1-0/kernel/AdamIdense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
<dense_block/dense_block-dense_block_mode1-0/kernel/Adam/readIdentity7dense_block/dense_block-dense_block_mode1-0/kernel/Adam*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
_output_shapes

:<@
�
[dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB"<   @   *
dtype0*
_output_shapes
:
�
Qdense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros/ConstConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Kdense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zerosFill[dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros/shape_as_tensorQdense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:<@*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*

index_type0
�
9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:<@*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
	container *
shape
:<@
�
@dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/AssignAssign9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1Kdense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros*
_output_shapes

:<@*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(
�
>dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/readIdentity9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1*
_output_shapes

:<@*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel
�
Gdense_block/dense_block-dense_block_mode1-0/bias/Adam/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
5dense_block/dense_block-dense_block_mode1-0/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
	container *
shape:@
�
<dense_block/dense_block-dense_block_mode1-0/bias/Adam/AssignAssign5dense_block/dense_block-dense_block_mode1-0/bias/AdamGdense_block/dense_block-dense_block_mode1-0/bias/Adam/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@
�
:dense_block/dense_block-dense_block_mode1-0/bias/Adam/readIdentity5dense_block/dense_block-dense_block_mode1-0/bias/Adam*
_output_shapes
:@*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias
�
Idense_block/dense_block-dense_block_mode1-0/bias/Adam_1/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
valueB@*    *
dtype0*
_output_shapes
:@
�
7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1
VariableV2*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
�
>dense_block/dense_block-dense_block_mode1-0/bias/Adam_1/AssignAssign7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1Idense_block/dense_block-dense_block_mode1-0/bias/Adam_1/Initializer/zeros*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
<dense_block/dense_block-dense_block_mode1-0/bias/Adam_1/readIdentity7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
_output_shapes
:@
�
Ydense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB"@       
�
Odense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros/ConstConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Idense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zerosFillYdense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros/shape_as_tensorOdense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros/Const*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*

index_type0*
_output_shapes

:@ 
�
7dense_block/dense_block-dense_block_mode1-1/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:@ *
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
	container *
shape
:@ 
�
>dense_block/dense_block-dense_block_mode1-1/kernel/Adam/AssignAssign7dense_block/dense_block-dense_block_mode1-1/kernel/AdamIdense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
<dense_block/dense_block-dense_block_mode1-1/kernel/Adam/readIdentity7dense_block/dense_block-dense_block_mode1-1/kernel/Adam*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
_output_shapes

:@ 
�
[dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB"@       *
dtype0*
_output_shapes
:
�
Qdense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros/ConstConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Kdense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zerosFill[dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros/shape_as_tensorQdense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros/Const*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*

index_type0*
_output_shapes

:@ 
�
9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:@ *
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
	container *
shape
:@ 
�
@dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/AssignAssign9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1Kdense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
>dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/readIdentity9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
_output_shapes

:@ 
�
Gdense_block/dense_block-dense_block_mode1-1/bias/Adam/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
5dense_block/dense_block-dense_block_mode1-1/bias/Adam
VariableV2*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
�
<dense_block/dense_block-dense_block_mode1-1/bias/Adam/AssignAssign5dense_block/dense_block-dense_block_mode1-1/bias/AdamGdense_block/dense_block-dense_block_mode1-1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias
�
:dense_block/dense_block-dense_block_mode1-1/bias/Adam/readIdentity5dense_block/dense_block-dense_block_mode1-1/bias/Adam*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
_output_shapes
: 
�
Idense_block/dense_block-dense_block_mode1-1/bias/Adam_1/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
valueB *    *
dtype0*
_output_shapes
: 
�
7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
	container *
shape: 
�
>dense_block/dense_block-dense_block_mode1-1/bias/Adam_1/AssignAssign7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1Idense_block/dense_block-dense_block_mode1-1/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias
�
<dense_block/dense_block-dense_block_mode1-1/bias/Adam_1/readIdentity7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
_output_shapes
: *
T0
�
Idense_block/dense_block-dense_block_mode1-2/kernel/Adam/Initializer/zerosConst*
_output_shapes

: *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
valueB *    *
dtype0
�
7dense_block/dense_block-dense_block_mode1-2/kernel/Adam
VariableV2*
shape
: *
dtype0*
_output_shapes

: *
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
	container 
�
>dense_block/dense_block-dense_block_mode1-2/kernel/Adam/AssignAssign7dense_block/dense_block-dense_block_mode1-2/kernel/AdamIdense_block/dense_block-dense_block_mode1-2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
<dense_block/dense_block-dense_block_mode1-2/kernel/Adam/readIdentity7dense_block/dense_block-dense_block_mode1-2/kernel/Adam*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
_output_shapes

: 
�
Kdense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/Initializer/zerosConst*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
valueB *    *
dtype0*
_output_shapes

: 
�
9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1
VariableV2*
shared_name *E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
�
@dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/AssignAssign9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1Kdense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

: *
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel
�
>dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/readIdentity9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
_output_shapes

: 
�
Gdense_block/dense_block-dense_block_mode1-2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
valueB*    *
dtype0
�
5dense_block/dense_block-dense_block_mode1-2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
	container *
shape:
�
<dense_block/dense_block-dense_block_mode1-2/bias/Adam/AssignAssign5dense_block/dense_block-dense_block_mode1-2/bias/AdamGdense_block/dense_block-dense_block_mode1-2/bias/Adam/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:
�
:dense_block/dense_block-dense_block_mode1-2/bias/Adam/readIdentity5dense_block/dense_block-dense_block_mode1-2/bias/Adam*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
_output_shapes
:
�
Idense_block/dense_block-dense_block_mode1-2/bias/Adam_1/Initializer/zerosConst*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias
�
>dense_block/dense_block-dense_block_mode1-2/bias/Adam_1/AssignAssign7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1Idense_block/dense_block-dense_block_mode1-2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(
�
<dense_block/dense_block-dense_block_mode1-2/bias/Adam_1/readIdentity7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
_output_shapes
:
�
#dense/kernel/Adam/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
dense/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container *
shape
:
�
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
%dense/kernel/Adam_1/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@dense/kernel*
	container *
shape
:
�
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
�
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
�
!dense/bias/Adam/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
dense/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
u
dense/bias/Adam/readIdentitydense/bias/Adam*
_class
loc:@dense/bias*
_output_shapes
:*
T0
�
#dense/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias*
valueB*    
�
dense/bias/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@dense/bias
�
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
y
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@dense/bias
\
optimization/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
\
optimization/Adam/beta2Const*
_output_shapes
: *
valueB
 *w�?*
dtype0
^
optimization/Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
Uoptimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/kernel/ApplyAdam	ApplyAdam2dense_block/dense_block-dense_block_mode1-0/kernel7dense_block/dense_block-dense_block_mode1-0/kernel/Adam9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon	Reshape_2*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
use_nesterov( *
_output_shapes

:<@*
use_locking( *
T0
�
Soptimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/bias/ApplyAdam	ApplyAdam0dense_block/dense_block-dense_block_mode1-0/bias5dense_block/dense_block-dense_block_mode1-0/bias/Adam7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon	Reshape_4*
use_locking( *
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
use_nesterov( *
_output_shapes
:@
�
Uoptimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/kernel/ApplyAdam	ApplyAdam2dense_block/dense_block-dense_block_mode1-1/kernel7dense_block/dense_block-dense_block_mode1-1/kernel/Adam9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon	Reshape_6*
use_nesterov( *
_output_shapes

:@ *
use_locking( *
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel
�
Soptimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/bias/ApplyAdam	ApplyAdam0dense_block/dense_block-dense_block_mode1-1/bias5dense_block/dense_block-dense_block_mode1-1/bias/Adam7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon	Reshape_8*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias
�
Uoptimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/kernel/ApplyAdam	ApplyAdam2dense_block/dense_block-dense_block_mode1-2/kernel7dense_block/dense_block-dense_block_mode1-2/kernel/Adam9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon
Reshape_10*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
use_nesterov( *
_output_shapes

: *
use_locking( *
T0
�
Soptimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/bias/ApplyAdam	ApplyAdam0dense_block/dense_block-dense_block_mode1-2/bias5dense_block/dense_block-dense_block_mode1-2/bias/Adam7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon
Reshape_12*
use_locking( *
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
use_nesterov( *
_output_shapes
:
�
/optimization/Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon
Reshape_14*
_class
loc:@dense/kernel*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0
�
-optimization/Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1optimization/beta1_power/readoptimization/beta2_power/readranking/ExponentialDecayoptimization/Adam/beta1optimization/Adam/beta2optimization/Adam/epsilon
Reshape_16*
_output_shapes
:*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( 
�
optimization/Adam/mulMuloptimization/beta1_power/readoptimization/Adam/beta1.^optimization/Adam/update_dense/bias/ApplyAdam0^optimization/Adam/update_dense/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@dense/bias
�
optimization/Adam/AssignAssignoptimization/beta1_poweroptimization/Adam/mul*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
�
optimization/Adam/mul_1Muloptimization/beta2_power/readoptimization/Adam/beta2.^optimization/Adam/update_dense/bias/ApplyAdam0^optimization/Adam/update_dense/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/kernel/ApplyAdam*
_class
loc:@dense/bias*
_output_shapes
: *
T0
�
optimization/Adam/Assign_1Assignoptimization/beta2_poweroptimization/Adam/mul_1*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( 
�
optimization/AdamNoOp^optimization/Adam/Assign^optimization/Adam/Assign_1.^optimization/Adam/update_dense/bias/ApplyAdam0^optimization/Adam/update_dense/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-0/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-1/kernel/ApplyAdamT^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/bias/ApplyAdamV^optimization/Adam/update_dense_block/dense_block-dense_block_mode1-2/kernel/ApplyAdam
�

initNoOp^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign=^dense_block/dense_block-dense_block_mode1-0/bias/Adam/Assign?^dense_block/dense_block-dense_block_mode1-0/bias/Adam_1/Assign8^dense_block/dense_block-dense_block_mode1-0/bias/Assign?^dense_block/dense_block-dense_block_mode1-0/kernel/Adam/AssignA^dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Assign:^dense_block/dense_block-dense_block_mode1-0/kernel/Assign=^dense_block/dense_block-dense_block_mode1-1/bias/Adam/Assign?^dense_block/dense_block-dense_block_mode1-1/bias/Adam_1/Assign8^dense_block/dense_block-dense_block_mode1-1/bias/Assign?^dense_block/dense_block-dense_block_mode1-1/kernel/Adam/AssignA^dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Assign:^dense_block/dense_block-dense_block_mode1-1/kernel/Assign=^dense_block/dense_block-dense_block_mode1-2/bias/Adam/Assign?^dense_block/dense_block-dense_block_mode1-2/bias/Adam_1/Assign8^dense_block/dense_block-dense_block_mode1-2/bias/Assign?^dense_block/dense_block-dense_block_mode1-2/kernel/Adam/AssignA^dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/Assign:^dense_block/dense_block-dense_block_mode1-2/kernel/Assign ^optimization/beta1_power/Assign ^optimization/beta2_power/Assign^ranking/Variable/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�	
save/SaveV2/tensor_namesConst*�	
value�	B�	B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-0/biasB5dense_block/dense_block-dense_block_mode1-0/bias/AdamB7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-0/kernelB7dense_block/dense_block-dense_block_mode1-0/kernel/AdamB9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-1/biasB5dense_block/dense_block-dense_block_mode1-1/bias/AdamB7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-1/kernelB7dense_block/dense_block-dense_block_mode1-1/kernel/AdamB9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-2/biasB5dense_block/dense_block-dense_block_mode1-2/bias/AdamB7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-2/kernelB7dense_block/dense_block-dense_block_mode1-2/kernel/AdamB9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1Boptimization/beta1_powerBoptimization/beta2_powerBranking/Variable*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_10dense_block/dense_block-dense_block_mode1-0/bias5dense_block/dense_block-dense_block_mode1-0/bias/Adam7dense_block/dense_block-dense_block_mode1-0/bias/Adam_12dense_block/dense_block-dense_block_mode1-0/kernel7dense_block/dense_block-dense_block_mode1-0/kernel/Adam9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_10dense_block/dense_block-dense_block_mode1-1/bias5dense_block/dense_block-dense_block_mode1-1/bias/Adam7dense_block/dense_block-dense_block_mode1-1/bias/Adam_12dense_block/dense_block-dense_block_mode1-1/kernel7dense_block/dense_block-dense_block_mode1-1/kernel/Adam9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_10dense_block/dense_block-dense_block_mode1-2/bias5dense_block/dense_block-dense_block_mode1-2/bias/Adam7dense_block/dense_block-dense_block_mode1-2/bias/Adam_12dense_block/dense_block-dense_block_mode1-2/kernel7dense_block/dense_block-dense_block_mode1-2/kernel/Adam9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1optimization/beta1_poweroptimization/beta2_powerranking/Variable*)
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�	
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�	
value�	B�	B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-0/biasB5dense_block/dense_block-dense_block_mode1-0/bias/AdamB7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-0/kernelB7dense_block/dense_block-dense_block_mode1-0/kernel/AdamB9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-1/biasB5dense_block/dense_block-dense_block_mode1-1/bias/AdamB7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-1/kernelB7dense_block/dense_block-dense_block_mode1-1/kernel/AdamB9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-2/biasB5dense_block/dense_block-dense_block_mode1-2/bias/AdamB7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-2/kernelB7dense_block/dense_block-dense_block_mode1-2/kernel/AdamB9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1Boptimization/beta1_powerBoptimization/beta2_powerBranking/Variable
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2
�
save/AssignAssign
dense/biassave/RestoreV2*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_1Assigndense/bias/Adamsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_2Assigndense/bias/Adam_1save/RestoreV2:2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias
�
save/Assign_3Assigndense/kernelsave/RestoreV2:3*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_4Assigndense/kernel/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
�
save/Assign_5Assigndense/kernel/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
�
save/Assign_6Assign0dense_block/dense_block-dense_block_mode1-0/biassave/RestoreV2:6*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@
�
save/Assign_7Assign5dense_block/dense_block-dense_block_mode1-0/bias/Adamsave/RestoreV2:7*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@
�
save/Assign_8Assign7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1save/RestoreV2:8*
_output_shapes
:@*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(
�
save/Assign_9Assign2dense_block/dense_block-dense_block_mode1-0/kernelsave/RestoreV2:9*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
save/Assign_10Assign7dense_block/dense_block-dense_block_mode1-0/kernel/Adamsave/RestoreV2:10*
_output_shapes

:<@*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(
�
save/Assign_11Assign9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1save/RestoreV2:11*
_output_shapes

:<@*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(
�
save/Assign_12Assign0dense_block/dense_block-dense_block_mode1-1/biassave/RestoreV2:12*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_13Assign5dense_block/dense_block-dense_block_mode1-1/bias/Adamsave/RestoreV2:13*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save/Assign_14Assign7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1save/RestoreV2:14*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_15Assign2dense_block/dense_block-dense_block_mode1-1/kernelsave/RestoreV2:15*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ *
use_locking(*
T0
�
save/Assign_16Assign7dense_block/dense_block-dense_block_mode1-1/kernel/Adamsave/RestoreV2:16*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
save/Assign_17Assign9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1save/RestoreV2:17*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
save/Assign_18Assign0dense_block/dense_block-dense_block_mode1-2/biassave/RestoreV2:18*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save/Assign_19Assign5dense_block/dense_block-dense_block_mode1-2/bias/Adamsave/RestoreV2:19*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_20Assign7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1save/RestoreV2:20*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_21Assign2dense_block/dense_block-dense_block_mode1-2/kernelsave/RestoreV2:21*
_output_shapes

: *
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(
�
save/Assign_22Assign7dense_block/dense_block-dense_block_mode1-2/kernel/Adamsave/RestoreV2:22*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
save/Assign_23Assign9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1save/RestoreV2:23*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: *
use_locking(
�
save/Assign_24Assignoptimization/beta1_powersave/RestoreV2:24*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_25Assignoptimization/beta2_powersave/RestoreV2:25*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_26Assignranking/Variablesave/RestoreV2:26*
use_locking(*
T0*#
_class
loc:@ranking/Variable*
validate_shape(*
_output_shapes
: 
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_b21d3714c15f4a278ec127b741fe63d7/part*
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�	
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*�	
value�	B�	B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-0/biasB5dense_block/dense_block-dense_block_mode1-0/bias/AdamB7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-0/kernelB7dense_block/dense_block-dense_block_mode1-0/kernel/AdamB9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-1/biasB5dense_block/dense_block-dense_block_mode1-1/bias/AdamB7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-1/kernelB7dense_block/dense_block-dense_block_mode1-1/kernel/AdamB9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-2/biasB5dense_block/dense_block-dense_block_mode1-2/bias/AdamB7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-2/kernelB7dense_block/dense_block-dense_block_mode1-2/kernel/AdamB9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1Boptimization/beta1_powerBoptimization/beta2_powerBranking/Variable*
dtype0
�
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_10dense_block/dense_block-dense_block_mode1-0/bias5dense_block/dense_block-dense_block_mode1-0/bias/Adam7dense_block/dense_block-dense_block_mode1-0/bias/Adam_12dense_block/dense_block-dense_block_mode1-0/kernel7dense_block/dense_block-dense_block_mode1-0/kernel/Adam9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_10dense_block/dense_block-dense_block_mode1-1/bias5dense_block/dense_block-dense_block_mode1-1/bias/Adam7dense_block/dense_block-dense_block_mode1-1/bias/Adam_12dense_block/dense_block-dense_block_mode1-1/kernel7dense_block/dense_block-dense_block_mode1-1/kernel/Adam9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_10dense_block/dense_block-dense_block_mode1-2/bias5dense_block/dense_block-dense_block_mode1-2/bias/Adam7dense_block/dense_block-dense_block_mode1-2/bias/Adam_12dense_block/dense_block-dense_block_mode1-2/kernel7dense_block/dense_block-dense_block_mode1-2/kernel/Adam9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1optimization/beta1_poweroptimization/beta2_powerranking/Variable"/device:CPU:0*)
dtypes
2
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*�	
value�	B�	B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-0/biasB5dense_block/dense_block-dense_block_mode1-0/bias/AdamB7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-0/kernelB7dense_block/dense_block-dense_block_mode1-0/kernel/AdamB9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-1/biasB5dense_block/dense_block-dense_block_mode1-1/bias/AdamB7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-1/kernelB7dense_block/dense_block-dense_block_mode1-1/kernel/AdamB9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1B0dense_block/dense_block-dense_block_mode1-2/biasB5dense_block/dense_block-dense_block_mode1-2/bias/AdamB7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1B2dense_block/dense_block-dense_block_mode1-2/kernelB7dense_block/dense_block-dense_block_mode1-2/kernel/AdamB9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1Boptimization/beta1_powerBoptimization/beta2_powerBranking/Variable
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2
�
save_1/AssignAssign
dense/biassave_1/RestoreV2*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_1/Assign_1Assigndense/bias/Adamsave_1/RestoreV2:1*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
�
save_1/Assign_2Assigndense/bias/Adam_1save_1/RestoreV2:2*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
�
save_1/Assign_3Assigndense/kernelsave_1/RestoreV2:3*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
save_1/Assign_4Assigndense/kernel/Adamsave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
�
save_1/Assign_5Assigndense/kernel/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes

:
�
save_1/Assign_6Assign0dense_block/dense_block-dense_block_mode1-0/biassave_1/RestoreV2:6*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save_1/Assign_7Assign5dense_block/dense_block-dense_block_mode1-0/bias/Adamsave_1/RestoreV2:7*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@
�
save_1/Assign_8Assign7dense_block/dense_block-dense_block_mode1-0/bias/Adam_1save_1/RestoreV2:8*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-0/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
�
save_1/Assign_9Assign2dense_block/dense_block-dense_block_mode1-0/kernelsave_1/RestoreV2:9*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
save_1/Assign_10Assign7dense_block/dense_block-dense_block_mode1-0/kernel/Adamsave_1/RestoreV2:10*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
save_1/Assign_11Assign9dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-0/kernel*
validate_shape(*
_output_shapes

:<@
�
save_1/Assign_12Assign0dense_block/dense_block-dense_block_mode1-1/biassave_1/RestoreV2:12*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_13Assign5dense_block/dense_block-dense_block_mode1-1/bias/Adamsave_1/RestoreV2:13*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/Assign_14Assign7dense_block/dense_block-dense_block_mode1-1/bias/Adam_1save_1/RestoreV2:14*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/Assign_15Assign2dense_block/dense_block-dense_block_mode1-1/kernelsave_1/RestoreV2:15*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
save_1/Assign_16Assign7dense_block/dense_block-dense_block_mode1-1/kernel/Adamsave_1/RestoreV2:16*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel*
validate_shape(*
_output_shapes

:@ 
�
save_1/Assign_17Assign9dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1save_1/RestoreV2:17*
validate_shape(*
_output_shapes

:@ *
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-1/kernel
�
save_1/Assign_18Assign0dense_block/dense_block-dense_block_mode1-2/biassave_1/RestoreV2:18*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_1/Assign_19Assign5dense_block/dense_block-dense_block_mode1-2/bias/Adamsave_1/RestoreV2:19*
use_locking(*
T0*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:
�
save_1/Assign_20Assign7dense_block/dense_block-dense_block_mode1-2/bias/Adam_1save_1/RestoreV2:20*C
_class9
75loc:@dense_block/dense_block-dense_block_mode1-2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_1/Assign_21Assign2dense_block/dense_block-dense_block_mode1-2/kernelsave_1/RestoreV2:21*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_22Assign7dense_block/dense_block-dense_block_mode1-2/kernel/Adamsave_1/RestoreV2:22*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_23Assign9dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1save_1/RestoreV2:23*
use_locking(*
T0*E
_class;
97loc:@dense_block/dense_block-dense_block_mode1-2/kernel*
validate_shape(*
_output_shapes

: 
�
save_1/Assign_24Assignoptimization/beta1_powersave_1/RestoreV2:24*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_25Assignoptimization/beta2_powersave_1/RestoreV2:25*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
�
save_1/Assign_26Assignranking/Variablesave_1/RestoreV2:26*#
_class
loc:@ranking/Variable*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"�
cond_context��
�
cond/cond_textcond/pred_id:0cond/switch_t:0 *Q
cond/Const:0
cond/pred_id:0
cond/switch_t:0 
cond/pred_id:0cond/pred_id:0
�
cond/cond_text_1cond/pred_id:0cond/switch_f:0*�
Sum:0
cond/Const_1:0

cond/Sum:0
cond/mul/Switch:0
cond/mul/Switch_1:0

cond/mul:0
cond/pred_id:0
cond/switch_f:0
cond/truediv/Switch:0
cond/truediv:0
logistic_loss:0
mul_5:0
Sum:0cond/truediv/Switch:0
mul_5:0cond/mul/Switch_1:0 
cond/pred_id:0cond/pred_id:0$
logistic_loss:0cond/mul/Switch:0"!
train_op

optimization/Adam"�,
	variables�,�,
h
ranking/Variable:0ranking/Variable/Assignranking/Variable/read:02 ranking/Variable/initial_value:0
�
4dense_block/dense_block-dense_block_mode1-0/kernel:09dense_block/dense_block-dense_block_mode1-0/kernel/Assign9dense_block/dense_block-dense_block_mode1-0/kernel/read:02Odense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-0/bias:07dense_block/dense_block-dense_block_mode1-0/bias/Assign7dense_block/dense_block-dense_block_mode1-0/bias/read:02Ddense_block/dense_block-dense_block_mode1-0/bias/Initializer/zeros:08
�
4dense_block/dense_block-dense_block_mode1-1/kernel:09dense_block/dense_block-dense_block_mode1-1/kernel/Assign9dense_block/dense_block-dense_block_mode1-1/kernel/read:02Odense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-1/bias:07dense_block/dense_block-dense_block_mode1-1/bias/Assign7dense_block/dense_block-dense_block_mode1-1/bias/read:02Ddense_block/dense_block-dense_block_mode1-1/bias/Initializer/zeros:08
�
4dense_block/dense_block-dense_block_mode1-2/kernel:09dense_block/dense_block-dense_block_mode1-2/kernel/Assign9dense_block/dense_block-dense_block_mode1-2/kernel/read:02Odense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-2/bias:07dense_block/dense_block-dense_block_mode1-2/bias/Assign7dense_block/dense_block-dense_block_mode1-2/bias/read:02Ddense_block/dense_block-dense_block_mode1-2/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
�
optimization/beta1_power:0optimization/beta1_power/Assignoptimization/beta1_power/read:02(optimization/beta1_power/initial_value:0
�
optimization/beta2_power:0optimization/beta2_power/Assignoptimization/beta2_power/read:02(optimization/beta2_power/initial_value:0
�
9dense_block/dense_block-dense_block_mode1-0/kernel/Adam:0>dense_block/dense_block-dense_block_mode1-0/kernel/Adam/Assign>dense_block/dense_block-dense_block_mode1-0/kernel/Adam/read:02Kdense_block/dense_block-dense_block_mode1-0/kernel/Adam/Initializer/zeros:0
�
;dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1:0@dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Assign@dense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/read:02Mdense_block/dense_block-dense_block_mode1-0/kernel/Adam_1/Initializer/zeros:0
�
7dense_block/dense_block-dense_block_mode1-0/bias/Adam:0<dense_block/dense_block-dense_block_mode1-0/bias/Adam/Assign<dense_block/dense_block-dense_block_mode1-0/bias/Adam/read:02Idense_block/dense_block-dense_block_mode1-0/bias/Adam/Initializer/zeros:0
�
9dense_block/dense_block-dense_block_mode1-0/bias/Adam_1:0>dense_block/dense_block-dense_block_mode1-0/bias/Adam_1/Assign>dense_block/dense_block-dense_block_mode1-0/bias/Adam_1/read:02Kdense_block/dense_block-dense_block_mode1-0/bias/Adam_1/Initializer/zeros:0
�
9dense_block/dense_block-dense_block_mode1-1/kernel/Adam:0>dense_block/dense_block-dense_block_mode1-1/kernel/Adam/Assign>dense_block/dense_block-dense_block_mode1-1/kernel/Adam/read:02Kdense_block/dense_block-dense_block_mode1-1/kernel/Adam/Initializer/zeros:0
�
;dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1:0@dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Assign@dense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/read:02Mdense_block/dense_block-dense_block_mode1-1/kernel/Adam_1/Initializer/zeros:0
�
7dense_block/dense_block-dense_block_mode1-1/bias/Adam:0<dense_block/dense_block-dense_block_mode1-1/bias/Adam/Assign<dense_block/dense_block-dense_block_mode1-1/bias/Adam/read:02Idense_block/dense_block-dense_block_mode1-1/bias/Adam/Initializer/zeros:0
�
9dense_block/dense_block-dense_block_mode1-1/bias/Adam_1:0>dense_block/dense_block-dense_block_mode1-1/bias/Adam_1/Assign>dense_block/dense_block-dense_block_mode1-1/bias/Adam_1/read:02Kdense_block/dense_block-dense_block_mode1-1/bias/Adam_1/Initializer/zeros:0
�
9dense_block/dense_block-dense_block_mode1-2/kernel/Adam:0>dense_block/dense_block-dense_block_mode1-2/kernel/Adam/Assign>dense_block/dense_block-dense_block_mode1-2/kernel/Adam/read:02Kdense_block/dense_block-dense_block_mode1-2/kernel/Adam/Initializer/zeros:0
�
;dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1:0@dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/Assign@dense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/read:02Mdense_block/dense_block-dense_block_mode1-2/kernel/Adam_1/Initializer/zeros:0
�
7dense_block/dense_block-dense_block_mode1-2/bias/Adam:0<dense_block/dense_block-dense_block_mode1-2/bias/Adam/Assign<dense_block/dense_block-dense_block_mode1-2/bias/Adam/read:02Idense_block/dense_block-dense_block_mode1-2/bias/Adam/Initializer/zeros:0
�
9dense_block/dense_block-dense_block_mode1-2/bias/Adam_1:0>dense_block/dense_block-dense_block_mode1-2/bias/Adam_1/Assign>dense_block/dense_block-dense_block_mode1-2/bias/Adam_1/read:02Kdense_block/dense_block-dense_block_mode1-2/bias/Adam_1/Initializer/zeros:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0"��
while_context����
�"
while/while_context
*while/LoopCond:02while/Merge:0:while/Identity:0Bwhile/Exit:0Bwhile/Exit_1:0J�!
TensorArray:0
dense/kernel/read:0
9dense_block/dense_block-dense_block_mode1-0/kernel/read:0
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0
ranking/batch_size:0
ranking/dense_block/Relu:0
ranking/dense_block_1/Relu:0
ranking/dense_block_2/Relu:0
ranking/feature:0
ranking/score:0
while/Enter:0
while/Enter_1:0
while/Exit:0
while/Exit_1:0
while/Identity:0
while/Identity_1:0
while/Less/Enter:0
while/Less:0
while/LoopCond:0
while/Merge:0
while/Merge:1
while/Merge_1:0
while/Merge_1:1
while/NextIteration:0
while/NextIteration_1:0
while/Switch:0
while/Switch:1
while/Switch_1:0
while/Switch_1:1
1while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
+while/TensorArrayWrite/TensorArrayWriteV3:0
while/TensorArrayWrite/value:0
while/add/y:0
while/add:0
while/add_1/y:0
while/add_1:0
while/gradients/Fill:0
while/gradients/Shape:0
while/gradients/grad_ys_0:0
8while/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
8while/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
2while/gradients/ranking/dense/MatMul_grad/MatMul:0
:while/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
4while/gradients/ranking/dense/MatMul_grad/MatMul_1:0
8while/gradients/ranking/dense_block/Relu_grad/ReluGrad:0
^while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd_grad/BiasAddGrad:0
^while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul/Enter:0
Xwhile/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul:0
`while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1/Enter:0
Zwhile/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1:0
:while/gradients/ranking/dense_block_1/Relu_grad/ReluGrad:0
`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGrad:0
`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:0
Zwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul:0
bwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0
\while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1:0
:while/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0
Zwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul:0
bwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0
\while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1:0
0while/gradients/while/strided_slice_grad/Shape:0
;while/gradients/while/strided_slice_grad/StridedSliceGrad:0
while/strided_slice/Enter:0
while/strided_slice/stack:0
while/strided_slice/stack_1:0
while/strided_slice/stack_2:0
while/strided_slice:0�
ranking/dense_block/Relu:0bwhile/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0.
ranking/score:0while/strided_slice/Enter:0O
dense/kernel/read:08while/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0�
9dense_block/dense_block-dense_block_mode1-0/kernel/read:0^while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul/Enter:0*
ranking/batch_size:0while/Less/Enter:0�
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0`while/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0u
ranking/feature:0`while/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/MatMul_grad/MatMul_1/Enter:0Z
ranking/dense_block_2/Relu:0:while/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0B
TensorArray:01while/TensorArrayWrite/TensorArrayWriteV3/Enter:0�
ranking/dense_block_1/Relu:0bwhile/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0�
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0`while/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:0Rwhile/Enter:0Rwhile/Enter_1:0
�
while_1/while_context
*while_1/LoopCond:02while_1/Merge:0:while_1/Identity:0Bwhile_1/Exit:0Bwhile_1/Exit_1:0J�
TensorArray_1:0
dense/kernel/read:0
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0
ranking/batch_size:0
ranking/dense_block/Relu:0
ranking/dense_block_1/Relu:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_1/Enter:0
while_1/Enter_1:0
while_1/Exit:0
while_1/Exit_1:0
while_1/Identity:0
while_1/Identity_1:0
while_1/Less/Enter:0
while_1/Less:0
while_1/LoopCond:0
while_1/Merge:0
while_1/Merge:1
while_1/Merge_1:0
while_1/Merge_1:1
while_1/NextIteration:0
while_1/NextIteration_1:0
while_1/Switch:0
while_1/Switch:1
while_1/Switch_1:0
while_1/Switch_1:1
3while_1/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_1/TensorArrayWrite/TensorArrayWriteV3:0
 while_1/TensorArrayWrite/value:0
while_1/add/y:0
while_1/add:0
while_1/add_1/y:0
while_1/add_1:0
while_1/gradients/Fill:0
while_1/gradients/Shape:0
while_1/gradients/grad_ys_0:0
:while_1/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_1/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_1/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_1/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_1/gradients/ranking/dense/MatMul_grad/MatMul_1:0
:while_1/gradients/ranking/dense_block/Relu_grad/ReluGrad:0
`while_1/gradients/ranking/dense_block/dense_block-dense_block_mode1-0/BiasAdd_grad/BiasAddGrad:0
<while_1/gradients/ranking/dense_block_1/Relu_grad/ReluGrad:0
bwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGrad:0
bwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:0
\while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul:0
dwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0
^while_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1:0
<while_1/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
bwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
bwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0
\while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul:0
dwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0
^while_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1:0
4while_1/gradients/while_1/strided_slice_grad/Shape:0
?while_1/gradients/while_1/strided_slice_grad/StridedSliceGrad:0
while_1/strided_slice/Enter:0
while_1/strided_slice/stack:0
while_1/strided_slice/stack_1:0
while_1/strided_slice/stack_2:0
while_1/strided_slice:0\
ranking/dense_block_2/Relu:0<while_1/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0�
ranking/dense_block_1/Relu:0dwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0�
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0bwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:00
ranking/score:0while_1/strided_slice/Enter:0�
ranking/dense_block/Relu:0dwhile_1/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0Q
dense/kernel/read:0:while_1/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0,
ranking/batch_size:0while_1/Less/Enter:0F
TensorArray_1:03while_1/TensorArrayWrite/TensorArrayWriteV3/Enter:0�
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0bwhile_1/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0Rwhile_1/Enter:0Rwhile_1/Enter_1:0
�
while_2/while_context
*while_2/LoopCond:02while_2/Merge:0:while_2/Identity:0Bwhile_2/Exit:0Bwhile_2/Exit_1:0J�
TensorArray_2:0
dense/kernel/read:0
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0
ranking/batch_size:0
ranking/dense_block/Relu:0
ranking/dense_block_1/Relu:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_2/Enter:0
while_2/Enter_1:0
while_2/Exit:0
while_2/Exit_1:0
while_2/Identity:0
while_2/Identity_1:0
while_2/Less/Enter:0
while_2/Less:0
while_2/LoopCond:0
while_2/Merge:0
while_2/Merge:1
while_2/Merge_1:0
while_2/Merge_1:1
while_2/NextIteration:0
while_2/NextIteration_1:0
while_2/Switch:0
while_2/Switch:1
while_2/Switch_1:0
while_2/Switch_1:1
3while_2/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_2/TensorArrayWrite/TensorArrayWriteV3:0
 while_2/TensorArrayWrite/value:0
while_2/add/y:0
while_2/add:0
while_2/add_1/y:0
while_2/add_1:0
while_2/gradients/Fill:0
while_2/gradients/Shape:0
while_2/gradients/grad_ys_0:0
:while_2/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_2/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_2/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_2/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_2/gradients/ranking/dense/MatMul_grad/MatMul_1:0
<while_2/gradients/ranking/dense_block_1/Relu_grad/ReluGrad:0
bwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGrad:0
bwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:0
\while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul:0
dwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0
^while_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1:0
<while_2/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
bwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
bwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0
\while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul:0
dwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0
^while_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1:0
4while_2/gradients/while_2/strided_slice_grad/Shape:0
?while_2/gradients/while_2/strided_slice_grad/StridedSliceGrad:0
while_2/strided_slice/Enter:0
while_2/strided_slice/stack:0
while_2/strided_slice/stack_1:0
while_2/strided_slice/stack_2:0
while_2/strided_slice:0�
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0bwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0\
ranking/dense_block_2/Relu:0<while_2/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0�
9dense_block/dense_block-dense_block_mode1-1/kernel/read:0bwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul/Enter:0�
ranking/dense_block_1/Relu:0dwhile_2/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0F
TensorArray_2:03while_2/TensorArrayWrite/TensorArrayWriteV3/Enter:00
ranking/score:0while_2/strided_slice/Enter:0�
ranking/dense_block/Relu:0dwhile_2/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/MatMul_grad/MatMul_1/Enter:0Q
dense/kernel/read:0:while_2/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0,
ranking/batch_size:0while_2/Less/Enter:0Rwhile_2/Enter:0Rwhile_2/Enter_1:0
�
while_3/while_context
*while_3/LoopCond:02while_3/Merge:0:while_3/Identity:0Bwhile_3/Exit:0Bwhile_3/Exit_1:0J�
TensorArray_3:0
dense/kernel/read:0
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0
ranking/batch_size:0
ranking/dense_block_1/Relu:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_3/Enter:0
while_3/Enter_1:0
while_3/Exit:0
while_3/Exit_1:0
while_3/Identity:0
while_3/Identity_1:0
while_3/Less/Enter:0
while_3/Less:0
while_3/LoopCond:0
while_3/Merge:0
while_3/Merge:1
while_3/Merge_1:0
while_3/Merge_1:1
while_3/NextIteration:0
while_3/NextIteration_1:0
while_3/Switch:0
while_3/Switch:1
while_3/Switch_1:0
while_3/Switch_1:1
3while_3/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_3/TensorArrayWrite/TensorArrayWriteV3:0
 while_3/TensorArrayWrite/value:0
while_3/add/y:0
while_3/add:0
while_3/add_1/y:0
while_3/add_1:0
while_3/gradients/Fill:0
while_3/gradients/Shape:0
while_3/gradients/grad_ys_0:0
:while_3/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_3/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_3/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_3/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_3/gradients/ranking/dense/MatMul_grad/MatMul_1:0
<while_3/gradients/ranking/dense_block_1/Relu_grad/ReluGrad:0
bwhile_3/gradients/ranking/dense_block_1/dense_block-dense_block_mode1-1/BiasAdd_grad/BiasAddGrad:0
<while_3/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
bwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
bwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0
\while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul:0
dwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0
^while_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1:0
4while_3/gradients/while_3/strided_slice_grad/Shape:0
?while_3/gradients/while_3/strided_slice_grad/StridedSliceGrad:0
while_3/strided_slice/Enter:0
while_3/strided_slice/stack:0
while_3/strided_slice/stack_1:0
while_3/strided_slice/stack_2:0
while_3/strided_slice:0\
ranking/dense_block_2/Relu:0<while_3/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0�
ranking/dense_block_1/Relu:0dwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:00
ranking/score:0while_3/strided_slice/Enter:0Q
dense/kernel/read:0:while_3/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0,
ranking/batch_size:0while_3/Less/Enter:0�
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0bwhile_3/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0F
TensorArray_3:03while_3/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rwhile_3/Enter:0Rwhile_3/Enter_1:0
�
while_4/while_context
*while_4/LoopCond:02while_4/Merge:0:while_4/Identity:0Bwhile_4/Exit:0Bwhile_4/Exit_1:0J�
TensorArray_4:0
dense/kernel/read:0
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0
ranking/batch_size:0
ranking/dense_block_1/Relu:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_4/Enter:0
while_4/Enter_1:0
while_4/Exit:0
while_4/Exit_1:0
while_4/Identity:0
while_4/Identity_1:0
while_4/Less/Enter:0
while_4/Less:0
while_4/LoopCond:0
while_4/Merge:0
while_4/Merge:1
while_4/Merge_1:0
while_4/Merge_1:1
while_4/NextIteration:0
while_4/NextIteration_1:0
while_4/Switch:0
while_4/Switch:1
while_4/Switch_1:0
while_4/Switch_1:1
3while_4/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_4/TensorArrayWrite/TensorArrayWriteV3:0
 while_4/TensorArrayWrite/value:0
while_4/add/y:0
while_4/add:0
while_4/add_1/y:0
while_4/add_1:0
while_4/gradients/Fill:0
while_4/gradients/Shape:0
while_4/gradients/grad_ys_0:0
:while_4/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_4/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_4/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_4/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_4/gradients/ranking/dense/MatMul_grad/MatMul_1:0
<while_4/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
bwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
bwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0
\while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul:0
dwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0
^while_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1:0
4while_4/gradients/while_4/strided_slice_grad/Shape:0
?while_4/gradients/while_4/strided_slice_grad/StridedSliceGrad:0
while_4/strided_slice/Enter:0
while_4/strided_slice/stack:0
while_4/strided_slice/stack_1:0
while_4/strided_slice/stack_2:0
while_4/strided_slice:0F
TensorArray_4:03while_4/TensorArrayWrite/TensorArrayWriteV3/Enter:00
ranking/score:0while_4/strided_slice/Enter:0Q
dense/kernel/read:0:while_4/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0,
ranking/batch_size:0while_4/Less/Enter:0�
9dense_block/dense_block-dense_block_mode1-2/kernel/read:0bwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul/Enter:0\
ranking/dense_block_2/Relu:0<while_4/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0�
ranking/dense_block_1/Relu:0dwhile_4/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/MatMul_grad/MatMul_1/Enter:0Rwhile_4/Enter:0Rwhile_4/Enter_1:0
�
while_5/while_context
*while_5/LoopCond:02while_5/Merge:0:while_5/Identity:0Bwhile_5/Exit:0Bwhile_5/Exit_1:0J�
TensorArray_5:0
dense/kernel/read:0
ranking/batch_size:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_5/Enter:0
while_5/Enter_1:0
while_5/Exit:0
while_5/Exit_1:0
while_5/Identity:0
while_5/Identity_1:0
while_5/Less/Enter:0
while_5/Less:0
while_5/LoopCond:0
while_5/Merge:0
while_5/Merge:1
while_5/Merge_1:0
while_5/Merge_1:1
while_5/NextIteration:0
while_5/NextIteration_1:0
while_5/Switch:0
while_5/Switch:1
while_5/Switch_1:0
while_5/Switch_1:1
3while_5/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_5/TensorArrayWrite/TensorArrayWriteV3:0
 while_5/TensorArrayWrite/value:0
while_5/add/y:0
while_5/add:0
while_5/add_1/y:0
while_5/add_1:0
while_5/gradients/Fill:0
while_5/gradients/Shape:0
while_5/gradients/grad_ys_0:0
:while_5/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_5/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_5/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_5/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_5/gradients/ranking/dense/MatMul_grad/MatMul_1:0
<while_5/gradients/ranking/dense_block_2/Relu_grad/ReluGrad:0
bwhile_5/gradients/ranking/dense_block_2/dense_block-dense_block_mode1-2/BiasAdd_grad/BiasAddGrad:0
4while_5/gradients/while_5/strided_slice_grad/Shape:0
?while_5/gradients/while_5/strided_slice_grad/StridedSliceGrad:0
while_5/strided_slice/Enter:0
while_5/strided_slice/stack:0
while_5/strided_slice/stack_1:0
while_5/strided_slice/stack_2:0
while_5/strided_slice:00
ranking/score:0while_5/strided_slice/Enter:0Q
dense/kernel/read:0:while_5/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0\
ranking/dense_block_2/Relu:0<while_5/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0F
TensorArray_5:03while_5/TensorArrayWrite/TensorArrayWriteV3/Enter:0,
ranking/batch_size:0while_5/Less/Enter:0Rwhile_5/Enter:0Rwhile_5/Enter_1:0
�
while_6/while_context
*while_6/LoopCond:02while_6/Merge:0:while_6/Identity:0Bwhile_6/Exit:0Bwhile_6/Exit_1:0J�
TensorArray_6:0
dense/kernel/read:0
ranking/batch_size:0
ranking/dense_block_2/Relu:0
ranking/score:0
while_6/Enter:0
while_6/Enter_1:0
while_6/Exit:0
while_6/Exit_1:0
while_6/Identity:0
while_6/Identity_1:0
while_6/Less/Enter:0
while_6/Less:0
while_6/LoopCond:0
while_6/Merge:0
while_6/Merge:1
while_6/Merge_1:0
while_6/Merge_1:1
while_6/NextIteration:0
while_6/NextIteration_1:0
while_6/Switch:0
while_6/Switch:1
while_6/Switch_1:0
while_6/Switch_1:1
3while_6/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_6/TensorArrayWrite/TensorArrayWriteV3:0
 while_6/TensorArrayWrite/value:0
while_6/add/y:0
while_6/add:0
while_6/add_1/y:0
while_6/add_1:0
while_6/gradients/Fill:0
while_6/gradients/Shape:0
while_6/gradients/grad_ys_0:0
:while_6/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
:while_6/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0
4while_6/gradients/ranking/dense/MatMul_grad/MatMul:0
<while_6/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0
6while_6/gradients/ranking/dense/MatMul_grad/MatMul_1:0
4while_6/gradients/while_6/strided_slice_grad/Shape:0
?while_6/gradients/while_6/strided_slice_grad/StridedSliceGrad:0
while_6/strided_slice/Enter:0
while_6/strided_slice/stack:0
while_6/strided_slice/stack_1:0
while_6/strided_slice/stack_2:0
while_6/strided_slice:00
ranking/score:0while_6/strided_slice/Enter:0Q
dense/kernel/read:0:while_6/gradients/ranking/dense/MatMul_grad/MatMul/Enter:0\
ranking/dense_block_2/Relu:0<while_6/gradients/ranking/dense/MatMul_grad/MatMul_1/Enter:0F
TensorArray_6:03while_6/TensorArrayWrite/TensorArrayWriteV3/Enter:0,
ranking/batch_size:0while_6/Less/Enter:0Rwhile_6/Enter:0Rwhile_6/Enter_1:0
�

while_7/while_context
*while_7/LoopCond:02while_7/Merge:0:while_7/Identity:0Bwhile_7/Exit:0Bwhile_7/Exit_1:0J�	
TensorArray_7:0
ranking/batch_size:0
ranking/score:0
while_7/Enter:0
while_7/Enter_1:0
while_7/Exit:0
while_7/Exit_1:0
while_7/Identity:0
while_7/Identity_1:0
while_7/Less/Enter:0
while_7/Less:0
while_7/LoopCond:0
while_7/Merge:0
while_7/Merge:1
while_7/Merge_1:0
while_7/Merge_1:1
while_7/NextIteration:0
while_7/NextIteration_1:0
while_7/Switch:0
while_7/Switch:1
while_7/Switch_1:0
while_7/Switch_1:1
3while_7/TensorArrayWrite/TensorArrayWriteV3/Enter:0
-while_7/TensorArrayWrite/TensorArrayWriteV3:0
 while_7/TensorArrayWrite/value:0
while_7/add/y:0
while_7/add:0
while_7/add_1/y:0
while_7/add_1:0
while_7/gradients/Fill:0
while_7/gradients/Shape:0
while_7/gradients/grad_ys_0:0
:while_7/gradients/ranking/dense/BiasAdd_grad/BiasAddGrad:0
4while_7/gradients/while_7/strided_slice_grad/Shape:0
?while_7/gradients/while_7/strided_slice_grad/StridedSliceGrad:0
while_7/strided_slice/Enter:0
while_7/strided_slice/stack:0
while_7/strided_slice/stack_1:0
while_7/strided_slice/stack_2:0
while_7/strided_slice:0F
TensorArray_7:03while_7/TensorArrayWrite/TensorArrayWriteV3/Enter:0,
ranking/batch_size:0while_7/Less/Enter:00
ranking/score:0while_7/strided_slice/Enter:0Rwhile_7/Enter:0Rwhile_7/Enter_1:0"�
trainable_variables��
�
4dense_block/dense_block-dense_block_mode1-0/kernel:09dense_block/dense_block-dense_block_mode1-0/kernel/Assign9dense_block/dense_block-dense_block_mode1-0/kernel/read:02Odense_block/dense_block-dense_block_mode1-0/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-0/bias:07dense_block/dense_block-dense_block_mode1-0/bias/Assign7dense_block/dense_block-dense_block_mode1-0/bias/read:02Ddense_block/dense_block-dense_block_mode1-0/bias/Initializer/zeros:08
�
4dense_block/dense_block-dense_block_mode1-1/kernel:09dense_block/dense_block-dense_block_mode1-1/kernel/Assign9dense_block/dense_block-dense_block_mode1-1/kernel/read:02Odense_block/dense_block-dense_block_mode1-1/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-1/bias:07dense_block/dense_block-dense_block_mode1-1/bias/Assign7dense_block/dense_block-dense_block_mode1-1/bias/read:02Ddense_block/dense_block-dense_block_mode1-1/bias/Initializer/zeros:08
�
4dense_block/dense_block-dense_block_mode1-2/kernel:09dense_block/dense_block-dense_block_mode1-2/kernel/Assign9dense_block/dense_block-dense_block_mode1-2/kernel/read:02Odense_block/dense_block-dense_block_mode1-2/kernel/Initializer/random_uniform:08
�
2dense_block/dense_block-dense_block_mode1-2/bias:07dense_block/dense_block-dense_block_mode1-2/bias/Assign7dense_block/dense_block-dense_block_mode1-2/bias/read:02Ddense_block/dense_block-dense_block_mode1-2/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
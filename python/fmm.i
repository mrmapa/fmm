%module fmm
%include "std_string.i"
%include "std_vector.i"
%include "stdint.i"
%include "std_shared_ptr.i"
%shared_ptr(FMM::MM::UBODT)
%ignore FMM::NETWORK::Network::route2geometry(std::vector<EdgeIndex> const &) const;
%ignore FMM::NETWORK::Network::get_edge(EdgeIndex index) const;
%ignore operator<<(std::ostream& os, const LineString& rhs);
%ignore FMM::MM::STMATCHConfig::print() const;
%ignore FMM::MM::FastMapMatchConfig::print() const;
%ignore FMM::CONFIG::GPSConfig::print() const;
%ignore FMM::CONFIG::ResultConfig::print() const;

%{
/* Put header files here or function declarations like below */
#include "core/geometry.hpp"
#include "network/type.hpp"
#include "network/network.hpp"
#include "network/network_graph.hpp"
#include "python/pyfmm.hpp"
#include "config/gps_config.hpp"
#include "config/result_config.hpp"
#include "mm/mm_type.hpp"
#include "mm/fmm/fmm_algorithm.hpp"
#include "mm/fmm/ubodt_gen_algorithm.hpp"
#include "mm/stmatch/stmatch_algorithm.hpp"
#include "mm/fmm/ubodt.hpp"
using namespace FMM;
using namespace FMM::CORE;
using namespace FMM::NETWORK;
using namespace FMM::MM;
using namespace FMM::CONFIG;
%}



%template(IntVector) std::vector<int>;
%template(IDVector) std::vector<int64_t>;
%template(UnsignedIntVector) std::vector<unsigned int>;
%template(DoubleVector) std::vector<double>;
%template(PyCandidateVector) std::vector<FMM::PYTHON::PyCandidate>;
// %template(DoubleVVector) vector<vector<double> >;
// %template(DoubleVVVector) vector<vector<vector<double> > >;
// %template(IntSet) set<int>;

%include "core/geometry.hpp"
%include "mm/mm_type.hpp"
%include "network/type.hpp"
%include "network/network.hpp"
%include "python/pyfmm.hpp"
%include "mm/fmm/ubodt.hpp"
%include "network/network_graph.hpp"
%include "mm/fmm/fmm_algorithm.hpp"
%include "mm/fmm/ubodt_gen_algorithm.hpp"
%include "config/gps_config.hpp"
%include "config/result_config.hpp"
%include "mm/stmatch/stmatch_algorithm.hpp"

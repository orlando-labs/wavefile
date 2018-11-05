module WaveFile
  class SamplerLoop
    def initialize(id:, type:, start_sample_frame:, end_sample_frame:, fraction:, play_count:)
      @id = id
      @type = type
      @start_sample_frame = start_sample_frame
      @end_sample_frame = end_sample_frame
      @fraction = fraction
      @play_count = play_count
    end

    # Public: Returns the ID of the specific Loop
    attr_reader :id

    # Public: Returns a symbol indicating which direction the loop should run. The possible values
    #         are :forward, :alternating, :backward, or :unknown.
    attr_reader :type

    # Public: Returns the start-position (in sample frames) of the loop
    attr_reader :start_sample_frame

    # Public: Returns the end-position (in sample frames) of the loop. The ending sample frame
    #         should be included in the loop.
    attr_reader :end_sample_frame

    # Public: A value between 0.0 and 1.0 which specifies a fraction of a sample at which to loop.
    #         This allows a loop to be fine tuned at a resolution finer than one sample.
    attr_reader :fraction

    # Public: Returns the number of times to loop. 0 means infinitely.
    attr_reader :play_count
  end
end
